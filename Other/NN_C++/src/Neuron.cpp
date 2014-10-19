#include "Neuron.hpp"
#include "Net.hpp"

#include <cmath>

double Neuron::eta = 0.15;
double Neuron::alpha = 0.5;

Neuron::Neuron(size_t numOutputs, size_t index) : m_index(index)
{
    for(size_t i = 0; i < numOutputs; ++i)
    {
        m_outputWeights.push_back(Connection());
        m_outputWeights.back().weight = randomWeight();
    }
}

void Neuron::feedForward(Layer& prevLayer)
{
    double sum = 0.0;
    for(size_t i = 0; i < prevLayer.size(); ++i)
    {
        sum += prevLayer[i].getOutput() * prevLayer[i].getOutputWeights()[m_index].weight;
    }

    m_output = Neuron::transferFunction(sum);

}

double Neuron::transferFunction(double x)
{
    return tanh(x);
}

double Neuron::transferFunctionDerivative(double x)
{
    return 1.0 - x * x;
}

void Neuron::calcOutputGradients(double targetValue)
{
    double delta = targetValue - m_output;
    m_gradient = delta * Neuron::transferFunctionDerivative(m_output);
}

void Neuron::calcHiddenGradients(const Layer& nextLayer)
{
    double dow = sumDOW(nextLayer);
    m_gradient = dow * Neuron::transferFunctionDerivative(m_output);
}

double Neuron::sumDOW(const Layer& nextLayer) const
{
    double sum = 0.0;

    for(size_t i = 0; i < nextLayer.size() - 1; ++i)
    {
            sum += m_outputWeights[i].weight * nextLayer[i].m_gradient;
    }

    return sum;
}

void Neuron::updateInputWeights(Layer& prevLayer)
{
    for(size_t i = 0; i < prevLayer.size(); ++i)
    {
        Neuron &neuron = prevLayer[i];
        double oldDeltaWeight = neuron.m_outputWeights[m_index].deltaWeight;

        double newDeltaWeight = eta * neuron.getOutput() * m_gradient + alpha * oldDeltaWeight;

        neuron.m_outputWeights[m_index].deltaWeight = newDeltaWeight;
        neuron.m_outputWeights[m_index].weight += newDeltaWeight;
    }
}
