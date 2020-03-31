// Includes all header files for dgumbel
// Berent Lunde
// 31.03.2020


#ifndef __GUMBEL_HPP_INCLUDED__
#define __GUMBEL_HPP_INCLUDED__

#include <RcppEigen.h>

// Enable C++11 via this plugin (Rcpp 0.10.3 or later)
// [[Rcpp::plugins("cpp11")]]

// Enables Eigen
// [[Rcpp::depends(RcppEigen)]]

template <class T>
using Tvec = Eigen::Matrix<T,Eigen::Dynamic,1>;

template <class T>
using Tmat = Eigen::Matrix<T,Eigen::Dynamic,Eigen::Dynamic>;

#include "adept/adept.h"
#include "adept/adept_source.h"

using adept::adouble;
typedef adept::adouble adtype;

#endif // __GUMBEL_HPP_INCLUDED__