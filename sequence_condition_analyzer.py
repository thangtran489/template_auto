#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
This module contains list of all test case in
ConditionAnalyzer Test Design Specification.
"""


class SequenceConditionAnalyzer:
    """
    This class have one property that is all names of test case in TDS
    ConditionAnalyzer.
    """

    def __init__(self):
        """Constructor."""
        self.__list_test_cases = list()
        self.__list_test_cases.append('CA_ANLYS_FUNC_01 - Send requests with the requestedAnalyses = |"BEARING"| and other required params in positive case')
        self.__list_test_cases.append('CA_ANLYS_FUNC_02 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and other required params in positive case')
        self.__list_test_cases.append('CA_ANLYS_FUNC_03 - Send requests with the requestedAnalyses = |"BEARING", "HSB", "CHARACVALUES"| and other required params in positive case')
        self.__list_test_cases.append('CA_ANLYS_FUNC_04 - Send requests with the requestedAnalyses = |"HSB"| and other required params in positive case')
        self.__list_test_cases.append('CA_ANLYS_FUNC_05 - Send requests with the requestedAnalyses = |"HSB", "CHARACVALUES"| and other required params in positive case')
        self.__list_test_cases.append('CA_ANLYS_FUNC_06 - Send requests with the requestedAnalyses = |"CHARACVALUES"| and other required params in positive case')
        self.__list_test_cases.append('CA_ANLYS_FUNC_07 - Send requests with the requestedAnalyses = |"BEARING"| and other required params in positive case with incipient defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_08 - Send requests with the requestedAnalyses = |"BEARING"| and other required params in positive case with advanced defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_09 - Send requests with the requestedAnalyses = |"BEARING"| and other required params in positive case with serious defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_10 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and other required params in positive case with incipient defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_11 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and other required params in positive case with advanced defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_12 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and other required params in positive case with serious defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_13 - Send requests with the requestedAnalyses = |"BEARING", "HSB", "CHARACVALUES"| and other required params in positive case with incipient defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_14 - Send requests with the requestedAnalyses = |"BEARING", "HSB", "CHARACVALUES"| and other required params in positive case with advanced defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_15 - Send requests with the requestedAnalyses = |"BEARING", "HSB", "CHARACVALUES"| and other required params in positive case with serious defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_16 - Send requests with the timesignals|"sampleCount"| = 512 in positive basic case')
        self.__list_test_cases.append('CA_ANLYS_FUNC_17 - Send requests with the timesignals|"sampleCount"| > 512 in positive basic case')
        self.__list_test_cases.append('CA_ANLYS_FUNC_18 - Send requests with the valid assetType values')
        self.__list_test_cases.append('CA_ANLYS_FUNC_19 - Send requests with the valid assetType values and the incipient bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_20 - Send requests with the valid assetType values and the advanced bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_21 - Send requests with the valid assetType values and the serious bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_22 - Send requests with the valid fixedInnerRace = true')
        self.__list_test_cases.append('CA_ANLYS_FUNC_23 - Send requests with the valid fixedInnerRace = false')
        self.__list_test_cases.append('CA_ANLYS_FUNC_24 - Send requests with the valid random name values')
        self.__list_test_cases.append('CA_ANLYS_FUNC_25 - Send requests with the valid random name values and the incipient bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_26 - Send requests with the valid random name values and the advanced bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_27 - Send requests with the valid random name values and the serious bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_28 - Send requests with the valid random rotationalSpeedRatio values')
        self.__list_test_cases.append('CA_ANLYS_FUNC_29 - Send requests with the valid random customerRef values')
        self.__list_test_cases.append('CA_ANLYS_FUNC_30 - Send requests with the valid random customerRef values and the incipient bearing defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_31 - Send requests with the valid random customerRef values and the advanced bearing defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_32 - Send requests with the valid random customerRef values and the serious bearing defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_33 - Send requests with the valid deviceType values')
        self.__list_test_cases.append('CA_ANLYS_FUNC_34 - Send requests with the valid deviceType values and the incipient bearing defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_35 - Send requests with the valid deviceType values and the advanced bearing defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_36 - Send requests with the valid deviceType values and the serious bearing defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_37 - Send requests with the ignoredFrequencies = null')
        self.__list_test_cases.append('CA_ANLYS_FUNC_38 - Send requests with the ignoredFrequencies = null with incipient defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_39 - Send requests with the ignoredFrequencies = null with advanced defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_40 - Send requests with the ignoredFrequencies = null with serious defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_41 - Send requests with the ignoredFrequencies = []')
        self.__list_test_cases.append('CA_ANLYS_FUNC_42 - Send requests with the ignoredFrequencies = [] with incipient defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_43 - Send requests with the ignoredFrequencies = [] with advanced defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_44 - Send requests with the ignoredFrequencies = [] with serious defect data')
        self.__list_test_cases.append('CA_ANLYS_FUNC_45 - Send requests with the valid value of frequency and speedDependent = true')
        self.__list_test_cases.append('CA_ANLYS_FUNC_46 - Send requests with the valid value of frequency and speedDependent = false')
        self.__list_test_cases.append('CA_ANLYS_FUNC_47 - Send requests with the valid isoClass values')
        self.__list_test_cases.append('CA_ANLYS_FUNC_48 - Send requests with the valid isoClass values and the incipient bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_49 - Send requests with the valid isoClass values and the advanced bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_50 - Send requests with the valid isoClass values and the serious bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_51 - Send requests with the variant length of random strings of statisticsHistory values')
        self.__list_test_cases.append('CA_ANLYS_FUNC_52 - Send requests with the variant length of random strings of statisticsHistory values and the incipient bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_53 - Send requests with the variant length of random strings of statisticsHistory values and the advanced bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_54 - Send requests with the variant length of random strings of statisticsHistory values and the serious bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_55 - Send requests with the variant valid values of the statisticsType')
        self.__list_test_cases.append('CA_ANLYS_FUNC_56 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalBase')
        self.__list_test_cases.append('CA_ANLYS_FUNC_57 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalDomain')
        self.__list_test_cases.append('CA_ANLYS_FUNC_58 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalKind')
        self.__list_test_cases.append('CA_ANLYS_FUNC_59 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalType')
        self.__list_test_cases.append('CA_ANLYS_FUNC_60 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalUnit')
        self.__list_test_cases.append('CA_ANLYS_FUNC_61 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalUnit and the incipient bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_62 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalUnit and the advanced bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_63 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalUnit and the serious bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_64 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the variant valid values of signalBase')
        self.__list_test_cases.append('CA_ANLYS_FUNC_65 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the variant valid values of signalBase and the incipient bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_66 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the variant valid values of signalBase and the advanced bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_67 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the variant valid values of signalBase and the serious bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_68 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalDomain = "BASE"')
        self.__list_test_cases.append('CA_ANLYS_FUNC_69 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalDomain = "BASE" and the incipient bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_70 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalDomain = "BASE" and the advanced bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_71 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalDomain = "BASE" and the serious bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_72 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalKind = "ACCELERATION"')
        self.__list_test_cases.append('CA_ANLYS_FUNC_73 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalKind = "ACCELERATION" and the incipient bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_74 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalKind = "ACCELERATION" and the advanced bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_75 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalKind = "ACCELERATION" and the serious bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_76 - Send requests with the requestedAnalyses = |"BEARING", "HSB". "CHARACVALUES"| with the variant valid values of signalType')
        self.__list_test_cases.append('CA_ANLYS_FUNC_77 - Send requests with the requestedAnalyses = |"BEARING", "HSB". "CHARACVALUES"| with the variant valid values of signalUnit')
        self.__list_test_cases.append('CA_ANLYS_FUNC_78 - Send requests with the requestedAnalyses = |BEARING", "HSB". "CHARACVALUES"]|with the variant valid values of signalUnit and the incipient bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_79 - Send requests with the requestedAnalyses = |BEARING", "HSB". "CHARACVALUES"]|with the variant valid values of signalUnit and the advanced bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_80 - Send requests with the requestedAnalyses = |BEARING", "HSB". "CHARACVALUES"]|with the variant valid values of signalUnit and the serious bearing defect dataset')
        self.__list_test_cases.append('CA_ANLYS_FUNC_81 - Send requests with the valid valueOffset value')
        self.__list_test_cases.append('CA_ANLYS_FUNC_82 - Send requests with the valid valueScaleFactor value')
        self.__list_test_cases.append('CA_ANLYS_FUNC_83 - Send requests with the mismatch between sampleCount and values in timesignals')
        self.__list_test_cases.append('CA_ANLYS_FUNC_84 - Send requests with the timesignals|{"sampleCount"}| < 512')
        self.__list_test_cases.append('CA_ANLYS_FUNC_85 - Send requests with the requestedAnalyses = |"HSB"| and the signalBase = "DISTANCE"')
        self.__list_test_cases.append('CA_ANLYS_FUNC_86 - Send requests with the requestedAnalyses = |"BEARING"| and the signalBase = "DISTANCE"')
        self.__list_test_cases.append('CA_ANLYS_FUNC_87 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and the signalBase = "DISTANCE"')
        self.__list_test_cases.append('CA_ANLYS_FUNC_88 - Send requests with the requestedAnalyses = |"HSB"| and the signalDomain = "FFT" & "CEPSTRUM"')
        self.__list_test_cases.append('CA_ANLYS_FUNC_89 - Send requests with the requestedAnalyses = |"BEARING"| and the signalDomain = "FFT" & "CEPSTRUM"')
        self.__list_test_cases.append('CA_ANLYS_FUNC_90 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and the signalDomain = "FFT" & "CEPSTRUM"')
        self.__list_test_cases.append('CA_ANLYS_FUNC_91 - Send requests with the requestedAnalyses = |"BEARING"| and the signalKind = "VELOCITY" & "DISPLACEMENT"')
        self.__list_test_cases.append('CA_ANLYS_FUNC_92 - Send requests with the requestedAnalyses = |"HSB"| and the signalKind = "DISPLACEMENT"')
        self.__list_test_cases.append('CA_ANLYS_FUNC_93 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and the signalKind = "DISPLACEMENT"')
        self.__list_test_cases.append('CA_ANLYS_FUNC_94 - Send requests with an empty string in bearingUuid')
        self.__list_test_cases.append('CA_ANLYS_FUNC_95 - Send requests with invalid bearingUuid string')
        self.__list_test_cases.append('CA_ANLYS_FUNC_96 - Send requests with the zero and the negative value of the cageFrequency when BEARING in requestedAnalyses')
        self.__list_test_cases.append('CA_ANLYS_FUNC_97 - Send requests with the zero and the negative value of the innerRacewayFrequency when BEARING in requestedAnalyses')
        self.__list_test_cases.append('CA_ANLYS_FUNC_98 - Send requests with the zero and the negative value of the twiceRollerFrequency when BEARING in requestedAnalyses')
        self.__list_test_cases.append('CA_CHGLG_FUNC_01 - Client requests successfully')
        self.__list_test_cases.append('CA_DUM_FUNC_01 - Client requests successfully')
        self.__list_test_cases.append('CA_VER_FUNC_01 - Client requests successfully')

    @property
    def list_test_cases(self):
        return self.__list_test_cases


def get_list_test_cases() -> list:
    """Get list test cases.

    Returns
    -------
    list
        list of all names of test cases in TDS Absolute Alarming
    """
    return SequenceConditionAnalyzer().list_test_cases
