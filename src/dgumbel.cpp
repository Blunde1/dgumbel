// Main functions
// Berent Lunde
// 31.03.2020

//#include "../inst/include/dgumbel.hpp"
#include "dgumbel.hpp"


template<class T>
T dgumbel(double x, T location, T scale, bool log_dens){
    
    T z = (x-location)/scale;
    T log_fx = -(z+exp(-z)) - log(scale);
    T res;
    if(log_dens){
        res = log_fx;
    }else{
        res = exp(log_fx);
    }
    return res;
    
}

// [[Rcpp::export(.dgumbel)]]
double dgumbel(double x, double location, double scale, bool log_dens){
    
    double res = dgumbel<double>(x, location, scale, log_dens);
    return res;
    
}

// [[Rcpp::export(.ddgumbel)]]
Rcpp::NumericVector ddgumbel(double x, double location, double scale, bool log_dens){
    
    adept::Stack stack;
    
    adtype location_ad = location;
    adtype scale_ad = scale;
    
    stack.new_recording();
    
    adtype res0 = dgumbel<adtype>(x, location_ad, scale_ad, log_dens);
    adtype res = res0/1.0;
    
    res.set_gradient(1.0);
    stack.compute_adjoint();
    
    // Fill result
    Rcpp::NumericVector grad = Rcpp::NumericVector::create(
        location_ad.get_gradient(), 
        scale_ad.get_gradient()
    );
    
    return grad;
    
}