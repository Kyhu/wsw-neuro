//============================================================================
// Name        : neural_network.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>

//#include <Neuron.hpp>
#include "Net.hpp"


int main()
{
    for(i = 2000; i >= 0; --i)
    {
        int n1 = (int)(2.0 * rand() / double(RAND_MAX));
        int n2 = (int)(2.0 * rand() / double(RAND_MAX));
        int t = n1 ^ n2;
    }
    std::vector<size_t> topology;
    topology.push_back(2);
    topology.push_back(4);
    topology.push_back(1);

    Net myNet(topology);

    std::vector<double> input;
    myNet.feedForward(input); // training

    std::vector<double> target;
    myNet.backProp(target); // set prop

    std::vector<double> results;
    results = myNet.getResults(); // getresults

    return 0;
}
