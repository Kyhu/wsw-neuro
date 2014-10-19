#pragma once

#include <vector>
#include <stddef.h>

#include "Neuron.hpp"

typedef std::vector<Neuron> Layer;

class Net
{
public:
    Net(const std::vector <size_t>& topology);

    void feedForward(const std::vector<double>& input);
    void backProp(const std::vector<double>& target);
    std::vector<double> getResults() const;
private:
     std::vector<Layer> m_layers;
     double m_error;
     double m_recentAverageError;
     double m_recentAverageSmoothingFactor;
};
