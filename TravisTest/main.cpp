//
//  main.cpp
//  TravisTest
//
//  Created by Dix Lorenz on 09.10.18.
//  Copyright © 2018 Dix Lorenz. All rights reserved.
//

#include <iostream>
#include <vector>
#include <ranges>
#include <algorithm>

using CandidateSolution = std::vector<int>;

std::size_t used_media_count(const CandidateSolution &base, const CandidateSolution &solution)
{

//  C++20, won't compile on linux
  return std::ranges::count(
     std::ranges::views::iota(0) | std::ranges::views::take(base.size()) |
        std::ranges::views::transform([&](std::size_t index) { return base[index] != solution[index] ? 1 : 0; }),
     1);
   
//   C++23
//   return std::ranges::count(
//      std::views::zip_transform([](auto lhs, auto rhs) { return lhs != rhs; }, base, solution), 1);
}


int main(int argc, const char *argv[])
{
   // insert code here...

   int *a = nullptr;

   std::cout << "Hello, World!\n";
   
   std::cout << used_media_count({1,2,3,0}, {1,3,3,4}) << std::endl;

   return 0;
}
