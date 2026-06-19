# Code for parameter structs of SINDBAD for WROASTED experiment applied to AU-Dry domain.
# Based on @code_expr from CodeTracking.jl. In case of conflicts, follow the original code in model approaches in src/Processes/[model]/[approach].jl

abstract type LandEcosystem end

# constants_numbers
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/constants/constants_numbers.jl
# Call order: 1

abstract type constants <: LandEcosystem end

struct constants_numbers <: constants
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/constants/constants_numbers.jl:4 =#
end

# --------------------------------------

# wCycleBase_simple
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/wCycleBase/wCycleBase_simple.jl
# Call order: 2

abstract type wCycleBase <: LandEcosystem end

struct wCycleBase_simple <: wCycleBase
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/wCycleBase/wCycleBase_simple.jl:4 =#
end

# --------------------------------------

# rainSnow_Tair
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/rainSnow/rainSnow_Tair.jl
# Call order: 3

abstract type rainSnow <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rainSnow/rainSnow_Tair.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rainSnow/rainSnow_Tair.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rainSnow/rainSnow_Tair.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rainSnow/rainSnow_Tair.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rainSnow/rainSnow_Tair.jl:4 =# @with_kw struct rainSnow_Tair{T1} <: rainSnow
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rainSnow/rainSnow_Tair.jl:5 =#
                        airT_thres::T1 = 0.0 | (-5.0, 5.0) | "threshold for separating rain and snow" | "°C" | ""
end

# --------------------------------------

# PET_Lu2005
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/PET/PET_Lu2005.jl
# Call order: 4

abstract type PET <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:4 =# @with_kw struct PET_Lu2005{T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15} <: PET
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:5 =#
                        α::T1 = 1.26 | (0.1, 2.0) | "calibration constant: α = 1.26 for wet or humid" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:6 =#
                        svp_1::T2 = 0.2 | (-Inf, Inf) | "saturation vapor pressure temperature curve parameter 1" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:7 =#
                        svp_2::T3 = 0.00738 | (-Inf, Inf) | "saturation vapor pressure temperature curve parameter 2" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:8 =#
                        svp_3::T4 = 0.8072 | (-Inf, Inf) | "saturation vapor pressure temperature curve parameter 3" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:9 =#
                        svp_4::T5 = 7.0 | (-Inf, Inf) | "saturation vapor pressure temperature curve parameter 4" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:10 =#
                        svp_5::T6 = 0.000116 | (-Inf, Inf) | "saturation vapor pressure temperature curve parameter 5" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:11 =#
                        sh_cp::T7 = 0.001013 | (-Inf, Inf) | "specific heat of moist air at constant pressure (1.013 kJ/kg/°C)" | "MJ/kg/°C" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:12 =#
                        elev::T8 = 0.0 | (0.0, 8848.0) | "elevation" | "m" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:13 =#
                        pres_sl::T9 = 101.29 | (0.0, 101.3) | "atmospheric pressure at sea level" | "kpa" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:14 =#
                        pres_elev::T10 = 0.01055 | (-Inf, Inf) | "rate of change of atmospheric pressure with elevation" | "kpa/m" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:15 =#
                        λ_base::T11 = 2.501 | (-Inf, Inf) | "latent heat of vaporization" | "MJ/kg" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:16 =#
                        λ_airT::T12 = 0.002361 | (-Inf, Inf) | "rate of change of latent heat of vaporization with temperature" | "MJ/kg/°C" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:17 =#
                        γ_resistance::T13 = 0.622 | (-Inf, Inf) | "ratio of canopy resistance to atmospheric resistance" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:18 =#
                        Δt::T14 = 2.0 | (-Inf, Inf) | "time delta for calculation of G" | "day" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/PET/PET_Lu2005.jl:19 =#
                        G_base::T15 = 4.2 | (-Inf, Inf) | "base groundheat flux" | "" | ""
end

# --------------------------------------

# ambientCO2_forcing
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/ambientCO2/ambientCO2_forcing.jl
# Call order: 5

abstract type ambientCO2 <: LandEcosystem end

struct ambientCO2_forcing <: ambientCO2
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/ambientCO2/ambientCO2_forcing.jl:3 =#
end

# --------------------------------------

# getPools_simple
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/getPools/getPools_simple.jl
# Call order: 6

abstract type getPools <: LandEcosystem end

struct getPools_simple <: getPools
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/getPools/getPools_simple.jl:3 =#
end

# --------------------------------------

# soilTexture_forcing
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/soilTexture/soilTexture_forcing.jl
# Call order: 7

abstract type soilTexture <: LandEcosystem end

struct soilTexture_forcing <: soilTexture
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilTexture/soilTexture_forcing.jl:3 =#
end

# --------------------------------------

# soilProperties_Saxton2006
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/soilProperties/soilProperties_Saxton2006.jl
# Call order: 8

abstract type soilProperties <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:6 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:6 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:6 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:6 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:6 =# @with_kw struct soilProperties_Saxton2006{T1, T2, T3, T4, T5, TN} <: soilProperties
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:7 =#
                        DF::T1 = 1.0 | (0.9, 1.3) | "Density correction factor" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:8 =#
                        Rw::T2 = 0.0 | (0.0, 1.0) | "Weight fraction of gravel (decimal)" | "g g-1" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:9 =#
                        matric_soil_density::T3 = 2.65 | (2.5, 3.0) | "Matric soil density" | "g cm-3" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:10 =#
                        gravel_density::T4 = 2.65 | (2.5, 3.0) | "density of gravel material" | "g cm-3" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:11 =#
                        EC::T5 = 36.0 | (30.0, 40.0) | "SElectrical conductance of a saturated soil extract" | "dS m-1 (dS/m = mili-mho cm-1)" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:12 =#
                        a1::TN = -0.024 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:13 =#
                        a2::TN = 0.487 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:14 =#
                        a3::TN = 0.006 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:15 =#
                        a4::TN = 0.005 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:16 =#
                        a5::TN = 0.013 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:17 =#
                        a6::TN = 0.068 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:18 =#
                        a7::TN = 0.031 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:19 =#
                        b1::TN = 0.14 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:20 =#
                        b2::TN = 0.02 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:21 =#
                        c1::TN = -0.251 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:22 =#
                        c2::TN = 0.195 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:23 =#
                        c3::TN = 0.011 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:24 =#
                        c4::TN = 0.006 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:25 =#
                        c5::TN = 0.027 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:26 =#
                        c6::TN = 0.452 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:27 =#
                        c7::TN = 0.299 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:28 =#
                        d1::TN = 1.283 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:29 =#
                        d2::TN = 0.374 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:30 =#
                        d3::TN = 0.015 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:31 =#
                        e1::TN = 0.278 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:32 =#
                        e2::TN = 0.034 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:33 =#
                        e3::TN = 0.022 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:34 =#
                        e4::TN = 0.018 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:35 =#
                        e5::TN = 0.027 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:36 =#
                        e6::TN = 0.584 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:37 =#
                        e7::TN = 0.078 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:38 =#
                        f1::TN = 0.636 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:39 =#
                        f2::TN = 0.107 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:40 =#
                        g1::TN = -21.67 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:41 =#
                        g2::TN = 27.93 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:42 =#
                        g3::TN = 81.97 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:43 =#
                        g4::TN = 71.12 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:44 =#
                        g5::TN = 8.29 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:45 =#
                        g6::TN = 14.05 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:46 =#
                        g7::TN = 27.16 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:47 =#
                        h1::TN = 0.02 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:48 =#
                        h2::TN = 0.113 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:49 =#
                        h3::TN = 0.7 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:50 =#
                        i1::TN = 0.097 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:51 =#
                        i2::TN = 0.043 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:52 =#
                        n02::TN = 0.2 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:53 =#
                        n24::TN = 24.0 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:54 =#
                        n33::TN = 33.0 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:55 =#
                        n36::TN = 36.0 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:56 =#
                        n1500::TN = 1500.0 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilProperties/soilProperties_Saxton2006.jl:57 =#
                        n1930::TN = 1930.0 | (-Inf, Inf) | "Saxton Parameters" | "" | ""
end

# --------------------------------------

# soilWBase_uniform
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/soilWBase/soilWBase_uniform.jl
# Call order: 9

abstract type soilWBase <: LandEcosystem end

struct soilWBase_uniform <: soilWBase
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/soilWBase/soilWBase_uniform.jl:3 =#
end

# --------------------------------------

# rootMaximumDepth_fracSoilD
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/rootMaximumDepth/rootMaximumDepth_fracSoilD.jl
# Call order: 10

abstract type rootMaximumDepth <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootMaximumDepth/rootMaximumDepth_fracSoilD.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootMaximumDepth/rootMaximumDepth_fracSoilD.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootMaximumDepth/rootMaximumDepth_fracSoilD.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootMaximumDepth/rootMaximumDepth_fracSoilD.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootMaximumDepth/rootMaximumDepth_fracSoilD.jl:4 =# @with_kw struct rootMaximumDepth_fracSoilD{T1} <: rootMaximumDepth
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootMaximumDepth/rootMaximumDepth_fracSoilD.jl:5 =#
                        constant_frac_max_root_depth::T1 = 0.5 | (0.1, 0.8) | "root depth as a fraction of soil depth" | "" | ""
end

# --------------------------------------

# rootWaterEfficiency_expCvegRoot
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/rootWaterEfficiency/rootWaterEfficiency_expCvegRoot.jl
# Call order: 11

abstract type rootWaterEfficiency <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootWaterEfficiency/rootWaterEfficiency_expCvegRoot.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootWaterEfficiency/rootWaterEfficiency_expCvegRoot.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootWaterEfficiency/rootWaterEfficiency_expCvegRoot.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootWaterEfficiency/rootWaterEfficiency_expCvegRoot.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootWaterEfficiency/rootWaterEfficiency_expCvegRoot.jl:4 =# @with_kw struct rootWaterEfficiency_expCvegRoot{T1, T2, T3} <: rootWaterEfficiency
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootWaterEfficiency/rootWaterEfficiency_expCvegRoot.jl:5 =#
                        k_efficiency_cVegRoot::T1 = 0.02 | (0.001, 0.3) | "rate constant of exponential relationship" | "m2/gC" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootWaterEfficiency/rootWaterEfficiency_expCvegRoot.jl:6 =#
                        max_root_water_efficiency::T2 = 0.95 | (0.7, 0.98) | "maximum root water uptake capacity" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootWaterEfficiency/rootWaterEfficiency_expCvegRoot.jl:7 =#
                        min_root_water_efficiency::T3 = 0.1 | (0.05, 0.3) | "minimum root water uptake threshold" | "" | ""
end

# --------------------------------------

# treeFraction_constant
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/treeFraction/treeFraction_constant.jl
# Call order: 12

abstract type treeFraction <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/treeFraction/treeFraction_constant.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/treeFraction/treeFraction_constant.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/treeFraction/treeFraction_constant.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/treeFraction/treeFraction_constant.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/treeFraction/treeFraction_constant.jl:4 =# @with_kw struct treeFraction_constant{T1} <: treeFraction
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/treeFraction/treeFraction_constant.jl:5 =#
                        constant_frac_tree::T1 = 1.0 | (0.3, 1.0) | "Tree fraction" | "" | ""
end

# --------------------------------------

# fAPAR_cVegLeaf
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/fAPAR/fAPAR_cVegLeaf.jl
# Call order: 13

abstract type fAPAR <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/fAPAR/fAPAR_cVegLeaf.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/fAPAR/fAPAR_cVegLeaf.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/fAPAR/fAPAR_cVegLeaf.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/fAPAR/fAPAR_cVegLeaf.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/fAPAR/fAPAR_cVegLeaf.jl:4 =# @with_kw struct fAPAR_cVegLeaf{T1} <: fAPAR
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/fAPAR/fAPAR_cVegLeaf.jl:5 =#
                        k_extinction::T1 = 0.005 | (0.0005, 0.05) | "effective light extinction coefficient" | "" | ""
end

# --------------------------------------

# LAI_cVegLeaf
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/LAI/LAI_cVegLeaf.jl
# Call order: 14

abstract type LAI <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/LAI/LAI_cVegLeaf.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/LAI/LAI_cVegLeaf.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/LAI/LAI_cVegLeaf.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/LAI/LAI_cVegLeaf.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/LAI/LAI_cVegLeaf.jl:4 =# @with_kw struct LAI_cVegLeaf{T1} <: LAI
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/LAI/LAI_cVegLeaf.jl:5 =#
                        SLA::T1 = 0.016 | (0.01, 0.024) | "specific leaf area" | "m^2.gC^-1" | ""
end

# --------------------------------------

# snowFraction_HTESSEL
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/snowFraction/snowFraction_HTESSEL.jl
# Call order: 15

abstract type snowFraction <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowFraction/snowFraction_HTESSEL.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowFraction/snowFraction_HTESSEL.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowFraction/snowFraction_HTESSEL.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowFraction/snowFraction_HTESSEL.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowFraction/snowFraction_HTESSEL.jl:4 =# @with_kw struct snowFraction_HTESSEL{T1} <: snowFraction
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowFraction/snowFraction_HTESSEL.jl:5 =#
                        snow_cover_param::T1 = 15.0 | (1.0, 100.0) | "Snow Cover Parameter" | "mm" | ""
end

# --------------------------------------

# snowMelt_TairRn
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/snowMelt/snowMelt_TairRn.jl
# Call order: 16

abstract type snowMelt <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowMelt/snowMelt_TairRn.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowMelt/snowMelt_TairRn.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowMelt/snowMelt_TairRn.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowMelt/snowMelt_TairRn.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowMelt/snowMelt_TairRn.jl:4 =# @with_kw struct snowMelt_TairRn{T1, T2} <: snowMelt
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowMelt/snowMelt_TairRn.jl:5 =#
                        melt_T::T1 = 3.0 | (0.01, 10.0) | "melt factor for temperature" | "mm/°C" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/snowMelt/snowMelt_TairRn.jl:6 =#
                        melt_Rn::T2 = 2.0 | (0.01, 3.0) | "melt factor for radiation" | "mm/MJ/m2" | ""
end

# --------------------------------------

# runoffSaturationExcess_Bergstroem1992
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/runoffSaturationExcess/runoffSaturationExcess_Bergstroem1992.jl
# Call order: 17

abstract type runoffSaturationExcess <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffSaturationExcess/runoffSaturationExcess_Bergstroem1992.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffSaturationExcess/runoffSaturationExcess_Bergstroem1992.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffSaturationExcess/runoffSaturationExcess_Bergstroem1992.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffSaturationExcess/runoffSaturationExcess_Bergstroem1992.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffSaturationExcess/runoffSaturationExcess_Bergstroem1992.jl:4 =# @with_kw struct runoffSaturationExcess_Bergstroem1992{T1} <: runoffSaturationExcess
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffSaturationExcess/runoffSaturationExcess_Bergstroem1992.jl:5 =#
                        β::T1 = 1.1 | (0.1, 5.0) | "berg exponential parameter" | "" | ""
end

# --------------------------------------

# runoffOverland_Sat
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/runoffOverland/runoffOverland_Sat.jl
# Call order: 18

abstract type runoffOverland <: LandEcosystem end

struct runoffOverland_Sat <: runoffOverland
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffOverland/runoffOverland_Sat.jl:3 =#
end

# --------------------------------------

# runoffSurface_all
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/runoffSurface/runoffSurface_all.jl
# Call order: 19

abstract type runoffSurface <: LandEcosystem end

struct runoffSurface_all <: runoffSurface
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffSurface/runoffSurface_all.jl:3 =#
end

# --------------------------------------

# runoffBase_Zhang2008
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/runoffBase/runoffBase_Zhang2008.jl
# Call order: 20

abstract type runoffBase <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffBase/runoffBase_Zhang2008.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffBase/runoffBase_Zhang2008.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffBase/runoffBase_Zhang2008.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffBase/runoffBase_Zhang2008.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffBase/runoffBase_Zhang2008.jl:4 =# @with_kw struct runoffBase_Zhang2008{T1} <: runoffBase
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoffBase/runoffBase_Zhang2008.jl:5 =#
                        k_baseflow::T1 = 0.001 | (1.0e-5, 0.02) | "base flow coefficient" | "day-1" | "day"
end

# --------------------------------------

# percolation_WBP
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/percolation/percolation_WBP.jl
# Call order: 21

abstract type percolation <: LandEcosystem end

struct percolation_WBP <: percolation
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/percolation/percolation_WBP.jl:3 =#
end

# --------------------------------------

# evaporation_fAPAR
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/evaporation/evaporation_fAPAR.jl
# Call order: 22

abstract type evaporation <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/evaporation/evaporation_fAPAR.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/evaporation/evaporation_fAPAR.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/evaporation/evaporation_fAPAR.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/evaporation/evaporation_fAPAR.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/evaporation/evaporation_fAPAR.jl:4 =# @with_kw struct evaporation_fAPAR{T1, T2} <: evaporation
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/evaporation/evaporation_fAPAR.jl:5 =#
                        α::T1 = 1.0 | (0.1, 3.0) | "α coefficient of Priestley-Taylor formula for soil" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/evaporation/evaporation_fAPAR.jl:6 =#
                        k_evaporation::T2 = 0.2 | (0.05, 0.95) | "fraction of soil water that can be used for soil evaporation" | "day-1" | "day"
end

# --------------------------------------

# drainage_dos
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/drainage/drainage_dos.jl
# Call order: 23

abstract type drainage <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/drainage/drainage_dos.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/drainage/drainage_dos.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/drainage/drainage_dos.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/drainage/drainage_dos.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/drainage/drainage_dos.jl:4 =# @with_kw struct drainage_dos{T1} <: drainage
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/drainage/drainage_dos.jl:5 =#
                        dos_exp::T1 = 1.5 | (0.1, 3.0) | "exponent of non-linearity for dos influence on drainage in soil" | "" | ""
end

# --------------------------------------

# capillaryFlow_VanDijk2010
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/capillaryFlow/capillaryFlow_VanDijk2010.jl
# Call order: 24

abstract type capillaryFlow <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/capillaryFlow/capillaryFlow_VanDijk2010.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/capillaryFlow/capillaryFlow_VanDijk2010.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/capillaryFlow/capillaryFlow_VanDijk2010.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/capillaryFlow/capillaryFlow_VanDijk2010.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/capillaryFlow/capillaryFlow_VanDijk2010.jl:4 =# @with_kw struct capillaryFlow_VanDijk2010{T1} <: capillaryFlow
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/capillaryFlow/capillaryFlow_VanDijk2010.jl:5 =#
                        max_frac::T1 = 0.95 | (0.02, 0.98) | "max fraction of soil moisture that can be lost as capillary flux" | "" | ""
end

# --------------------------------------

# groundWRecharge_dos
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/groundWRecharge/groundWRecharge_dos.jl
# Call order: 25

abstract type groundWRecharge <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/groundWRecharge/groundWRecharge_dos.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/groundWRecharge/groundWRecharge_dos.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/groundWRecharge/groundWRecharge_dos.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/groundWRecharge/groundWRecharge_dos.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/groundWRecharge/groundWRecharge_dos.jl:4 =# @with_kw struct groundWRecharge_dos{T1} <: groundWRecharge
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/groundWRecharge/groundWRecharge_dos.jl:5 =#
                        dos_exp::T1 = 1.5 | (1.0, 3.0) | "exponent of non-linearity for dos influence on drainage to groundwater" | "" | ""
end

# --------------------------------------

# groundWSoilWInteraction_VanDijk2010
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/groundWSoilWInteraction/groundWSoilWInteraction_VanDijk2010.jl
# Call order: 26

abstract type groundWSoilWInteraction <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/groundWSoilWInteraction/groundWSoilWInteraction_VanDijk2010.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/groundWSoilWInteraction/groundWSoilWInteraction_VanDijk2010.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/groundWSoilWInteraction/groundWSoilWInteraction_VanDijk2010.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/groundWSoilWInteraction/groundWSoilWInteraction_VanDijk2010.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/groundWSoilWInteraction/groundWSoilWInteraction_VanDijk2010.jl:4 =# @with_kw struct groundWSoilWInteraction_VanDijk2010{T1} <: groundWSoilWInteraction
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/groundWSoilWInteraction/groundWSoilWInteraction_VanDijk2010.jl:5 =#
                        max_fraction::T1 = 0.5 | (0.001, 0.98) | "fraction of groundwater that can be lost to capillary flux" | "" | ""
end

# --------------------------------------

# vegAvailableWater_rootWaterEfficiency
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/vegAvailableWater/vegAvailableWater_rootWaterEfficiency.jl
# Call order: 27

abstract type vegAvailableWater <: LandEcosystem end

struct vegAvailableWater_rootWaterEfficiency <: vegAvailableWater
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/vegAvailableWater/vegAvailableWater_rootWaterEfficiency.jl:3 =#
end

# --------------------------------------

# transpirationSupply_wAWC
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/transpirationSupply/transpirationSupply_wAWC.jl
# Call order: 28

abstract type transpirationSupply <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/transpirationSupply/transpirationSupply_wAWC.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/transpirationSupply/transpirationSupply_wAWC.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/transpirationSupply/transpirationSupply_wAWC.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/transpirationSupply/transpirationSupply_wAWC.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/transpirationSupply/transpirationSupply_wAWC.jl:4 =# @with_kw struct transpirationSupply_wAWC{T1} <: transpirationSupply
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/transpirationSupply/transpirationSupply_wAWC.jl:5 =#
                        k_transpiration::T1 = 0.99 | (0.002, 1.0) | "fraction of total maximum available water that can be transpired" | "" | ""
end

# --------------------------------------

# gppPotential_Monteith
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/gppPotential/gppPotential_Monteith.jl
# Call order: 29

abstract type gppPotential <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppPotential/gppPotential_Monteith.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppPotential/gppPotential_Monteith.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppPotential/gppPotential_Monteith.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppPotential/gppPotential_Monteith.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppPotential/gppPotential_Monteith.jl:4 =# @with_kw struct gppPotential_Monteith{T1} <: gppPotential
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppPotential/gppPotential_Monteith.jl:5 =#
                        εmax::T1 = 2.0 | (0.1, 5.0) | "Maximum Radiation Use Efficiency" | "gC/MJ" | ""
end

# --------------------------------------

# gppDiffRadiation_Wang2015
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/gppDiffRadiation/gppDiffRadiation_Wang2015.jl
# Call order: 30

abstract type gppDiffRadiation <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppDiffRadiation/gppDiffRadiation_Wang2015.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppDiffRadiation/gppDiffRadiation_Wang2015.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppDiffRadiation/gppDiffRadiation_Wang2015.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppDiffRadiation/gppDiffRadiation_Wang2015.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppDiffRadiation/gppDiffRadiation_Wang2015.jl:4 =# @with_kw struct gppDiffRadiation_Wang2015{T1} <: gppDiffRadiation
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppDiffRadiation/gppDiffRadiation_Wang2015.jl:5 =#
                        μ::T1 = 0.46 | (0.0001, 1.0) | "" | "" | ""
end

# --------------------------------------

# gppDirRadiation_none
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/gppDirRadiation/gppDirRadiation_none.jl
# Call order: 31

abstract type gppDirRadiation <: LandEcosystem end

struct gppDirRadiation_none <: gppDirRadiation
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppDirRadiation/gppDirRadiation_none.jl:3 =#
end

# --------------------------------------

# gppAirT_CASA
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/gppAirT/gppAirT_CASA.jl
# Call order: 32

abstract type gppAirT <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppAirT/gppAirT_CASA.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppAirT/gppAirT_CASA.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppAirT/gppAirT_CASA.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppAirT/gppAirT_CASA.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppAirT/gppAirT_CASA.jl:4 =# @with_kw struct gppAirT_CASA{T1, T, T3, T4} <: gppAirT
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppAirT/gppAirT_CASA.jl:5 =#
                        opt_airT::T1 = 25.0 | (5.0, 35.0) | "check in CASA code" | "°C" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppAirT/gppAirT_CASA.jl:6 =#
                        opt_airT_A::T = 0.2 | (0.01, 0.3) | "increasing slope of sensitivity" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppAirT/gppAirT_CASA.jl:7 =#
                        opt_airT_B::T3 = 0.3 | (0.01, 0.5) | "decreasing slope of sensitivity" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppAirT/gppAirT_CASA.jl:8 =#
                        exp_airT::T4 = 10.0 | (9.0, 11.0) | "reference for exponent of sensitivity" | "" | ""
end

# --------------------------------------

# gppVPD_PRELES
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/gppVPD/gppVPD_PRELES.jl
# Call order: 33

abstract type gppVPD <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppVPD/gppVPD_PRELES.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppVPD/gppVPD_PRELES.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppVPD/gppVPD_PRELES.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppVPD/gppVPD_PRELES.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppVPD/gppVPD_PRELES.jl:4 =# @with_kw struct gppVPD_PRELES{T1, T2, T3, T4} <: gppVPD
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppVPD/gppVPD_PRELES.jl:5 =#
                        κ::T1 = 0.4 | (0.06, 0.7) | "" | "kPa-1" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppVPD/gppVPD_PRELES.jl:6 =#
                        c_κ::T2 = 0.4 | (-50.0, 10.0) | "" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppVPD/gppVPD_PRELES.jl:7 =#
                        base_ambient_CO2::T3 = 295.0 | (250.0, 500.0) | "" | "ppm" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppVPD/gppVPD_PRELES.jl:8 =#
                        sat_ambient_CO2::T4 = 2000.0 | (400.0, 4000.0) | "" | "ppm" | ""
end

# --------------------------------------

# gppSoilW_Stocker2020
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/gppSoilW/gppSoilW_Stocker2020.jl
# Call order: 34

abstract type gppSoilW <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppSoilW/gppSoilW_Stocker2020.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppSoilW/gppSoilW_Stocker2020.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppSoilW/gppSoilW_Stocker2020.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppSoilW/gppSoilW_Stocker2020.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppSoilW/gppSoilW_Stocker2020.jl:4 =# @with_kw struct gppSoilW_Stocker2020{T1, T2} <: gppSoilW
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppSoilW/gppSoilW_Stocker2020.jl:5 =#
                        q::T1 = 1.0 | (0.01, 4.0) | "sensitivity of GPP to soil moisture " | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppSoilW/gppSoilW_Stocker2020.jl:6 =#
                        θstar::T2 = 0.6 | (0.1, 1.0) | "" | "" | ""
end

# --------------------------------------

# gppDemand_mult
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/gppDemand/gppDemand_mult.jl
# Call order: 35

abstract type gppDemand <: LandEcosystem end

struct gppDemand_mult <: gppDemand
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gppDemand/gppDemand_mult.jl:3 =#
end

# --------------------------------------

# WUE_expVPDDayCo2
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/WUE/WUE_expVPDDayCo2.jl
# Call order: 36

abstract type WUE <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/WUE/WUE_expVPDDayCo2.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/WUE/WUE_expVPDDayCo2.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/WUE/WUE_expVPDDayCo2.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/WUE/WUE_expVPDDayCo2.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/WUE/WUE_expVPDDayCo2.jl:4 =# @with_kw struct WUE_expVPDDayCo2{T1, T2, T3, T4, T5} <: WUE
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/WUE/WUE_expVPDDayCo2.jl:5 =#
                        WUE_one_hpa::T1 = 9.2 | (2.0, 20.0) | "WUE at 1 hpa VPD" | "gC/mmH2O" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/WUE/WUE_expVPDDayCo2.jl:6 =#
                        κ::T2 = 0.4 | (0.06, 0.7) | "" | "kPa-1" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/WUE/WUE_expVPDDayCo2.jl:7 =#
                        base_ambient_CO2::T3 = 380.0 | (300.0, 500.0) | "" | "ppm" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/WUE/WUE_expVPDDayCo2.jl:8 =#
                        sat_ambient_CO2::T4 = 500.0 | (10.0, 2000.0) | "" | "ppm" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/WUE/WUE_expVPDDayCo2.jl:9 =#
                        kpa_to_hpa::T5 = 10.0 | (-Inf, Inf) | "unit conversion kPa to hPa" | "" | ""
end

# --------------------------------------

# gpp_coupled
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/gpp/gpp_coupled.jl
# Call order: 37

abstract type gpp <: LandEcosystem end

struct gpp_coupled <: gpp
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/gpp/gpp_coupled.jl:3 =#
end

# --------------------------------------

# transpiration_coupled
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/transpiration/transpiration_coupled.jl
# Call order: 38

abstract type transpiration <: LandEcosystem end

struct transpiration_coupled <: transpiration
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/transpiration/transpiration_coupled.jl:3 =#
end

# --------------------------------------

# rootWaterUptake_proportion
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/rootWaterUptake/rootWaterUptake_proportion.jl
# Call order: 39

abstract type rootWaterUptake <: LandEcosystem end

struct rootWaterUptake_proportion <: rootWaterUptake
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/rootWaterUptake/rootWaterUptake_proportion.jl:3 =#
end

# --------------------------------------

# cCycleBase_GSI
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cCycleBase/cCycleBase_GSI.jl
# Call order: 40

abstract type cCycleBase <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:4 =# @with_kw struct cCycleBase_GSI{T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13} <: cCycleBase
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:5 =#
                        c_τ_Root::T1 = 1.0 | (0.05, 3.3) | "turnover rate of root carbon pool" | "year-1" | "year"
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:6 =#
                        c_τ_Wood::T2 = 0.03 | (0.001, 10.0) | "turnover rate of wood carbon pool" | "year-1" | "year"
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:7 =#
                        c_τ_Leaf::T3 = 1.0 | (0.05, 10.0) | "turnover rate of leaf carbon pool" | "year-1" | "year"
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:8 =#
                        c_τ_Reserve::T4 = 1.0e-11 | (1.0e-12, 1.0) | "Reserve does not respire, but has a small value to avoid  numerical error" | "year-1" | "year"
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:9 =#
                        c_τ_LitFast::T5 = 14.8 | (0.5, 148.0) | "turnover rate of fast litter (leaf litter) carbon pool" | "year-1" | "year"
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:10 =#
                        c_τ_LitSlow::T6 = 3.9 | (0.39, 39.0) | "turnover rate of slow litter carbon (wood litter) pool" | "year-1" | "year"
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:11 =#
                        c_τ_SoilSlow::T7 = 0.2 | (0.02, 2.0) | "turnover rate of slow soil carbon pool" | "year-1" | "year"
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:12 =#
                        c_τ_SoilOld::T8 = 0.0045 | (0.00045, 0.045) | "turnover rate of old soil carbon pool" | "year-1" | "year"
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:13 =#
                        c_flow_A_array::T9 = Float64.([-1.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0; 0.0 -1.0 0.0 0.0 0.0 0.0 0.0 0.0; 0.0 0.0 -1.0 1.0 0.0 0.0 0.0 0.0; 1.0 0.0 1.0 -1.0 0.0 0.0 0.0 0.0; 1.0 0.0 1.0 0.0 -1.0 0.0 0.0 0.0; 0.0 1.0 0.0 0.0 0.0 -1.0 0.0 0.0; 0.0 0.0 0.0 0.0 1.0 1.0 -1.0 0.0; 0.0 0.0 0.0 0.0 0.0 0.0 1.0 -1.0]) | (-Inf, Inf) | "Transfer matrix for carbon at ecosystem level" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:23 =#
                        p_C_to_N_cVeg::T10 = Float64.([25.0, 260.0, 260.0, 10.0]) | (-Inf, Inf) | "carbon to nitrogen ratio in vegetation pools" | "gC/gN" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:24 =#
                        ηH::T11 = 1.0 | (0.01, 100.0) | "scaling factor for heterotrophic pools after spinup" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:25 =#
                        ηA::T12 = 1.0 | (0.01, 100.0) | "scaling factor for vegetation pools after spinup" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleBase/cCycleBase_GSI.jl:26 =#
                        c_remain::T13 = 10.0 | (0.1, 100.0) | "remaining carbon after disturbance" | "" | ""
end

# --------------------------------------

# cCycleDisturbance_WROASTED
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cCycleDisturbance/cCycleDisturbance_WROASTED.jl
# Call order: 41

abstract type cCycleDisturbance <: LandEcosystem end

struct cCycleDisturbance_WROASTED <: cCycleDisturbance
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleDisturbance/cCycleDisturbance_WROASTED.jl:4 =#
end

# --------------------------------------

# cTauSoilT_Q10
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cTauSoilT/cTauSoilT_Q10.jl
# Call order: 42

abstract type cTauSoilT <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilT/cTauSoilT_Q10.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilT/cTauSoilT_Q10.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilT/cTauSoilT_Q10.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilT/cTauSoilT_Q10.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilT/cTauSoilT_Q10.jl:4 =# @with_kw struct cTauSoilT_Q10{T1, T2, T3} <: cTauSoilT
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilT/cTauSoilT_Q10.jl:5 =#
                        Q10::T1 = 1.4 | (1.05, 3.0) | "" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilT/cTauSoilT_Q10.jl:6 =#
                        ref_airT::T2 = 30.0 | (0.01, 40.0) | "" | "°C" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilT/cTauSoilT_Q10.jl:7 =#
                        Q10_base::T3 = 10.0 | (-Inf, Inf) | "base temperature difference" | "°C" | ""
end

# --------------------------------------

# cTauSoilW_GSI
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cTauSoilW/cTauSoilW_GSI.jl
# Call order: 43

abstract type cTauSoilW <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilW/cTauSoilW_GSI.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilW/cTauSoilW_GSI.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilW/cTauSoilW_GSI.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilW/cTauSoilW_GSI.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilW/cTauSoilW_GSI.jl:4 =# @with_kw struct cTauSoilW_GSI{T1, T2, T3, T4, T5} <: cTauSoilW
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilW/cTauSoilW_GSI.jl:5 =#
                        opt_soilW::T1 = 90.0 | (60.0, 95.0) | "Optimal moisture for decomposition" | "percent degree of saturation" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilW/cTauSoilW_GSI.jl:6 =#
                        opt_soilW_A::T2 = 0.2 | (0.1, 0.3) | "slope of increase" | "per percent" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilW/cTauSoilW_GSI.jl:7 =#
                        opt_soilW_B::T3 = 0.3 | (0.15, 0.5) | "slope of decrease" | "per percent" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilW/cTauSoilW_GSI.jl:8 =#
                        w_exp::T4 = 10.0 | (-Inf, Inf) | "reference for exponent of sensitivity" | "per percent" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilW/cTauSoilW_GSI.jl:9 =#
                        frac_to_perc::T5 = 100.0 | (-Inf, Inf) | "unit converter for fraction to percent" | "" | ""
end

# --------------------------------------

# cTauLAI_none
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cTauLAI/cTauLAI_none.jl
# Call order: 44

abstract type cTauLAI <: LandEcosystem end

struct cTauLAI_none <: cTauLAI
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauLAI/cTauLAI_none.jl:3 =#
end

# --------------------------------------

# cTauSoilProperties_none
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cTauSoilProperties/cTauSoilProperties_none.jl
# Call order: 45

abstract type cTauSoilProperties <: LandEcosystem end

struct cTauSoilProperties_none <: cTauSoilProperties
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauSoilProperties/cTauSoilProperties_none.jl:3 =#
end

# --------------------------------------

# cTauVegProperties_none
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cTauVegProperties/cTauVegProperties_none.jl
# Call order: 46

abstract type cTauVegProperties <: LandEcosystem end

struct cTauVegProperties_none <: cTauVegProperties
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTauVegProperties/cTauVegProperties_none.jl:3 =#
end

# --------------------------------------

# cTau_mult
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cTau/cTau_mult.jl
# Call order: 47

abstract type cTau <: LandEcosystem end

struct cTau_mult <: cTau
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cTau/cTau_mult.jl:3 =#
end

# --------------------------------------

# autoRespirationAirT_Q10
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/autoRespirationAirT/autoRespirationAirT_Q10.jl
# Call order: 48

abstract type autoRespirationAirT <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespirationAirT/autoRespirationAirT_Q10.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespirationAirT/autoRespirationAirT_Q10.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespirationAirT/autoRespirationAirT_Q10.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespirationAirT/autoRespirationAirT_Q10.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespirationAirT/autoRespirationAirT_Q10.jl:4 =# @with_kw struct autoRespirationAirT_Q10{T1, T2, T3} <: autoRespirationAirT
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespirationAirT/autoRespirationAirT_Q10.jl:5 =#
                        Q10::T1 = 2.0 | (1.05, 3.0) | "Q10 parameter for maintenance respiration" | "" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespirationAirT/autoRespirationAirT_Q10.jl:6 =#
                        ref_airT::T2 = 20.0 | (0.0, 40.0) | "Reference temperature for the maintenance respiration" | "°C" | ""
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespirationAirT/autoRespirationAirT_Q10.jl:7 =#
                        Q10_base::T3 = 10.0 | (-Inf, Inf) | "base temperature difference" | "°C" | ""
end

# --------------------------------------

# cAllocationLAI_none
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cAllocationLAI/cAllocationLAI_none.jl
# Call order: 49

abstract type cAllocationLAI <: LandEcosystem end

struct cAllocationLAI_none <: cAllocationLAI
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cAllocationLAI/cAllocationLAI_none.jl:3 =#
end

# --------------------------------------

# cAllocationRadiation_gpp
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cAllocationRadiation/cAllocationRadiation_gpp.jl
# Call order: 50

abstract type cAllocationRadiation <: LandEcosystem end

struct cAllocationRadiation_gpp <: cAllocationRadiation
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cAllocationRadiation/cAllocationRadiation_gpp.jl:3 =#
end

# --------------------------------------

# cAllocationSoilW_gpp
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cAllocationSoilW/cAllocationSoilW_gpp.jl
# Call order: 51

abstract type cAllocationSoilW <: LandEcosystem end

struct cAllocationSoilW_gpp <: cAllocationSoilW
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cAllocationSoilW/cAllocationSoilW_gpp.jl:3 =#
end

# --------------------------------------

# cAllocationSoilT_gpp
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cAllocationSoilT/cAllocationSoilT_gpp.jl
# Call order: 52

abstract type cAllocationSoilT <: LandEcosystem end

struct cAllocationSoilT_gpp <: cAllocationSoilT
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cAllocationSoilT/cAllocationSoilT_gpp.jl:3 =#
end

# --------------------------------------

# cAllocationNutrients_none
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cAllocationNutrients/cAllocationNutrients_none.jl
# Call order: 53

abstract type cAllocationNutrients <: LandEcosystem end

struct cAllocationNutrients_none <: cAllocationNutrients
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cAllocationNutrients/cAllocationNutrients_none.jl:3 =#
end

# --------------------------------------

# cAllocation_GSI
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cAllocation/cAllocation_GSI.jl
# Call order: 54

abstract type cAllocation <: LandEcosystem end

struct cAllocation_GSI <: cAllocation
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cAllocation/cAllocation_GSI.jl:3 =#
end

# --------------------------------------

# cAllocationTreeFraction_Friedlingstein1999
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cAllocationTreeFraction/cAllocationTreeFraction_Friedlingstein1999.jl
# Call order: 55

abstract type cAllocationTreeFraction <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cAllocationTreeFraction/cAllocationTreeFraction_Friedlingstein1999.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cAllocationTreeFraction/cAllocationTreeFraction_Friedlingstein1999.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cAllocationTreeFraction/cAllocationTreeFraction_Friedlingstein1999.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cAllocationTreeFraction/cAllocationTreeFraction_Friedlingstein1999.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cAllocationTreeFraction/cAllocationTreeFraction_Friedlingstein1999.jl:4 =# @with_kw struct cAllocationTreeFraction_Friedlingstein1999{T1} <: cAllocationTreeFraction
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cAllocationTreeFraction/cAllocationTreeFraction_Friedlingstein1999.jl:5 =#
                        frac_fine_to_coarse::T1 = 1.0 | (0.0, 1.0) | "carbon fraction allocated to fine roots" | "fraction" | ""
end

# --------------------------------------

# autoRespiration_Thornley2000A
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/autoRespiration/autoRespiration_Thornley2000A.jl
# Call order: 56

abstract type autoRespiration <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespiration/autoRespiration_Thornley2000A.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespiration/autoRespiration_Thornley2000A.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespiration/autoRespiration_Thornley2000A.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespiration/autoRespiration_Thornley2000A.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespiration/autoRespiration_Thornley2000A.jl:4 =# @with_kw struct autoRespiration_Thornley2000A{T1, T2} <: autoRespiration
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespiration/autoRespiration_Thornley2000A.jl:5 =#
                        RMN::T1 = 0.009085714285714286 | (0.0009085714285714285, 0.09085714285714286) | "Nitrogen efficiency rate of maintenance respiration" | "gC/gN/day" | "day"
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/autoRespiration/autoRespiration_Thornley2000A.jl:6 =#
                        YG::T2 = 0.75 | (0.0, 1.0) | "growth yield coefficient, or growth efficiency. Loosely: (1-YG)*GPP is growth respiration" | "gC/gC" | ""
end

# --------------------------------------

# cFlowSoilProperties_none
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cFlowSoilProperties/cFlowSoilProperties_none.jl
# Call order: 57

abstract type cFlowSoilProperties <: LandEcosystem end

struct cFlowSoilProperties_none <: cFlowSoilProperties
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cFlowSoilProperties/cFlowSoilProperties_none.jl:3 =#
end

# --------------------------------------

# cFlowVegProperties_none
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cFlowVegProperties/cFlowVegProperties_none.jl
# Call order: 58

abstract type cFlowVegProperties <: LandEcosystem end

struct cFlowVegProperties_none <: cFlowVegProperties
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cFlowVegProperties/cFlowVegProperties_none.jl:3 =#
end

# --------------------------------------

# cFlow_GSI
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cFlow/cFlow_GSI.jl
# Call order: 59

abstract type cFlow <: LandEcosystem end

#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cFlow/cFlow_GSI.jl:4 =#@bounds#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cFlow/cFlow_GSI.jl:4 =# @describe#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cFlow/cFlow_GSI.jl:4 =# @units#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cFlow/cFlow_GSI.jl:4 =# @timescale#= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cFlow/cFlow_GSI.jl:4 =# @with_kw struct cFlow_GSI{T1, T2, T3, T4} <: cFlow
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cFlow/cFlow_GSI.jl:5 =#
                        slope_leaf_root_to_reserve::T1 = 0.14 | (0.033, 0.33) | "Leaf-Root to Reserve" | "fraction" | "day"
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cFlow/cFlow_GSI.jl:6 =#
                        slope_reserve_to_leaf_root::T2 = 0.14 | (0.033, 0.33) | "Reserve to Leaf-Root" | "fraction" | "day"
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cFlow/cFlow_GSI.jl:7 =#
                        k_shedding::T3 = 0.14 | (0.033, 0.33) | "rate of shedding" | "fraction" | "day"
                        #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cFlow/cFlow_GSI.jl:8 =#
                        f_τ::T4 = 0.03 | (0.01, 0.1) | "contribution factor for current stressor" | "fraction" | "day"
end

# --------------------------------------

# cCycleConsistency_simple
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cCycleConsistency/cCycleConsistency_simple.jl
# Call order: 60

abstract type cCycleConsistency <: LandEcosystem end

struct cCycleConsistency_simple <: cCycleConsistency
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycleConsistency/cCycleConsistency_simple.jl:3 =#
end

# --------------------------------------

# cCycle_GSI
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cCycle/cCycle_GSI.jl
# Call order: 61

abstract type cCycle <: LandEcosystem end

struct cCycle_GSI <: cCycle
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cCycle/cCycle_GSI.jl:3 =#
end

# --------------------------------------

# evapotranspiration_sum
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/evapotranspiration/evapotranspiration_sum.jl
# Call order: 62

abstract type evapotranspiration <: LandEcosystem end

struct evapotranspiration_sum <: evapotranspiration
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/evapotranspiration/evapotranspiration_sum.jl:3 =#
end

# --------------------------------------

# runoff_sum
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/runoff/runoff_sum.jl
# Call order: 63

abstract type runoff <: LandEcosystem end

struct runoff_sum <: runoff
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/runoff/runoff_sum.jl:3 =#
end

# --------------------------------------

# wCycle_components
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/wCycle/wCycle_components.jl
# Call order: 64

abstract type wCycle <: LandEcosystem end

struct wCycle_components <: wCycle
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/wCycle/wCycle_components.jl:3 =#
end

# --------------------------------------

# waterBalance_simple
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/waterBalance/waterBalance_simple.jl
# Call order: 65

abstract type waterBalance <: LandEcosystem end

struct waterBalance_simple <: waterBalance
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/waterBalance/waterBalance_simple.jl:3 =#
end

# --------------------------------------

# cBiomass_simple
# /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/src/Processes/cBiomass/cBiomass_simple.jl
# Call order: 66

abstract type cBiomass <: LandEcosystem end

struct cBiomass_simple <: cBiomass
    #= /Net/Groups/BGI/work_4/scratch/eebiomass/sindbad_eolincs/eo-lincs-scs3-Feb12/sindbad_run_xshan/dev/Sindbad.jl/SindbadTEM/src/Processes/cBiomass/cBiomass_simple.jl:3 =#
end

# --------------------------------------