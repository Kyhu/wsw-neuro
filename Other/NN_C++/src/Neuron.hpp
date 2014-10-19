#pragma once

#include <stddef.h>
#include <cstdlib>
#include <vector>

#include "Connection.hpp"

class Neuron;

typedef std::vector<Neuron> Layer;

class Neuron
{
public:
    Neuron(size_t numOutputs, size_t index);

    void feedForward(Layer& prevLayer);

    void setOutput(double output)
    {
        m_output = output;
    }

    double getOutput() const
    {
        return m_output;
    }

    const std::vector<Connection>& getOutputWeights() const {
        return m_outputWeights;
    }

    void calcOutputGradients(double targetValue);
    void calcHiddenGradients(const Layer& nextLayer);
    void updateInputWeights(Layer& prevLayer);
private:
    static double eta;
    static double alpha;
    static double transferFunction(double x);
    static double transferFunctionDerivative(double x);
    static double randomWeight() { return rand() / double(RAND_MAX); }
    double sumDOW(const Layer& nextLayer) const;
    double m_output;
    double m_gradient;
    std::vector<Connection> m_outputWeights;
    size_t m_index;

};
