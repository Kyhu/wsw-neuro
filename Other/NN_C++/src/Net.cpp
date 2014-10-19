#include "Net.hpp"

#include <iostream>
#include <cassert>
#include <cmath>


Net::Net(const std::vector<size_t>& topology) :
                m_error(0.0), m_recentAverageError(0.0), m_recentAverageSmoothingFactor(0.0)
{
    size_t numLayers = topology.size();

    for(size_t i = 0; i < numLayers; ++i)
    {
        m_layers.push_back(Layer());
        size_t numOutputs = ((i == topology.size() - 1) ? 0 : topology[i + 1]);
        for(size_t j = 0; j <= topology[i]; ++j)
        {
            m_layers.back().push_back(Neuron(numOutputs, j));
            std::cout << "New neuron" << std::endl;
        }
        m_layers.back().back().setOutput(1.0);
    }
}

void Net::feedForward(const std::vector<double>& input)
{
    assert(input.size() == m_layers[0].size() - 1);

    for(size_t i = 0; i < input.size(); ++i)
    {
        m_layers[0][i].setOutput(input[i]);
    }

    for(size_t i = 1; i < m_layers.size(); ++i)
    {
        Layer& prevLayer = m_layers[i - 1];
        for(size_t j = 0; j < m_layers[i].size() - 1; ++j)
        {
            m_layers[i][j].feedForward(prevLayer);
        }
    }
}

void Net::backProp(const std::vector<double>& target)
{
    Layer& outputLayer = m_layers.back();

    m_error = 0.0;

    for(size_t i = 0; i < outputLayer.size() - 1; ++i)
    {
        double delta = target[i] - outputLayer[i].getOutput();
        m_error += delta * delta;
    }

    m_error /= outputLayer.size() - 1;
    m_error = sqrt(m_error);

    m_recentAverageError = (m_recentAverageError * m_recentAverageSmoothingFactor + m_error)
            / (m_recentAverageSmoothingFactor + 1.0);
    //calculate overall net error (RMS of output neuron errors)

    // caluclate output layer gradients

    for(size_t i = 0; i < outputLayer.size() - 1; ++i)
    {
        outputLayer[i].calcOutputGradients(target[i]);
    }
    // caluclate gradneins on hidden layer

    for(size_t i = m_layers.size() - 2; i > 0; --i)
    {
        Layer& hiddenLayer = m_layers[i];
        Layer& nextLayer = m_layers[i + 1];

        for(size_t j = 0; j < hiddenLayer.size(); ++j)
        {
            hiddenLayer[j].calcHiddenGradients(nextLayer);
        }
    }
    // for all layers from outputs to first hidden layer.

    // update connection weights

    for(size_t i = m_layers.size() - 1; i > 0; --i)
    {
        Layer& layer = m_layers[i];
        Layer& prevlayer = m_layers[i - 1];

        for(size_t j = 0; j < layer.size() - 1; ++j)
        {
            layer[j].updateInputWeights(prevlayer);
        }
    }
}

std::vector<double> Net::getResults() const
{
    std::vector<double> results;

    for(size_t i = 0; i < m_layers.back().size() - 1; ++i)
    {
        results.push_back(m_layers.back()[i].getOutput());
    }

    return results;
}
