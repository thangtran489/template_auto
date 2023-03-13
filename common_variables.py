#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""

"""


ASSET_TYPE = [
    "UNKNOWN", "BEARING_BLOCK", "BELT", "COMPRESSOR", "E_MOTOR", "FAN",
    "FRICTION_BEARING", "GEARBOX", "GENERATOR", "OTHER", "PUMP",
    "ROLLER", "SHAFT", "THRUSTER", "TURBINE", "WIND_TURBINE"
]

DEVICE_TYPE = [
    "OTHER",  "AW_3", "AW_5", "DTECTX1", "PROCHECK", "PROLINK", "SMARTCHECK"
]

ISO_CLASS = [
    "UNKNOWN", "I_SMALL_MACHINES", "II_MEDIUM_MACHINES_RIGID",
    "II_MEDIUM_MACHINES_ELASTIC", "III_LARGE_MACHINES_RIGID",
    "IV_LARGE_MACHINES_ELASTIC"
]

STATISTIC_TYPE = ["AUTO", "COUNTER", "BINOMIAL", "BAYESIAN", "NONE"]
SIGNAL_BASE = ["TIME", "ANGLE", "DISTANCE"]
SIGNAL_DOMAIN = ["BASE", "FFT", "CEPSTRUM"]
SIGNAL_KIND = ["ACCELERATION", "VELOCITY", "DISPLACEMENT"]
SIGNAL_TYPE = ["RAW", "DEMODULATED"]
SIGNAL_UNIT = [
    "G", "METER_PER_SQUARE_SECOND", "METER_PER_SECOND",
    "MILLIMETER_PER_SECOND",
    "METER", "MILLIMETER", "MICROMETER"
]
