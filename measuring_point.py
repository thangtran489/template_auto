#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""

"""


class DeviceType:
    other = 'OTHER'
    aw_3 = 'AW_3'
    aw_5 = 'AW_5'
    dtectx1 = 'DTECTX1'
    procheck = 'PROCHECK'
    prolink = 'PROLINK'
    smartcheck = 'SMARTCHECK'


class AssetType:
    unknown = 'UNKNOWN'
    bearing_block = 'BEARING_BLOCK'
    belt = 'BELT'
    compressor = 'COMPRESSOR'
    e_motor = 'E_MOTOR'
    fan = 'FAN'
    friction_bearing = 'FRICTION_BEARING'
    gearbox = 'GEARBOX'
    generator = 'GENERATOR'
    other = 'OTHER'
    pump = 'PUMP'
    roller = 'ROLLER'
    shaft = 'SHAFT'
    thruster = 'THRUSTER'
    turbine = 'TURBINE'
    wind_turbine = 'WIND_TURBINE'


class ISOClass:
    unknown = 'UNKNOWN'
    i_small_machines = 'I_SMALL_MACHINES'
    ii_medium_machines_rigid = 'II_MEDIUM_MACHINES_RIGID'
    ii_medium_machines_elastic = 'II_MEDIUM_MACHINES_ELASTIC'
    iii_large_machines_rigid = 'III_LARGE_MACHINES_RIGID'
    iv_large_machines_elastic = 'IV_LARGE_MACHINES_ELASTIC'


class HighPassCutOffFrequency:
    hp_750 = 'HP_750'
    hp_2000 = 'HP_2000'
    auto = 'AUTO'


class SignalBase:
    time = 'TIME'
    angle = 'ANGLE'
    distance = 'DISTANCE'


class SignalDomain:
    base = 'BASE'
    fft = 'FFT'
    cepstrum = 'CEPSTRUM'


class SignalType:
    raw = 'RAW'
    demodulated = 'DEMODULATED'


class SignalKind:
    acceleration = 'ACCELERATION'
    velocity = 'VELOCITY'
    displacement = 'DISPLACEMENT'


class SignalUnit:
    g = 'G'
    meter_per_square_second = 'METER_PER_SQUARE_SECOND'
    meter_per_second = 'METER_PER_SECOND'
    millimeter_per_second = 'MILLIMETER_PER_SECOND'
    meter = 'METER'
    millimeter = 'MILLIMETER'
    micrometer = 'MICROMETER'


class MeasuringPoint:
    def __init__(self, uuid: str, name: str, device_type: str, asset_type: str,
                 iso_class: str, **kwargs):
        self.uuid = uuid
        self.name = name
        self.device_type = device_type
        self.asset_type = asset_type,
        self.iso_class = iso_class
        self.__dict__.update(kwargs)


MEASURING_01 = MeasuringPoint(
    uuid='d7afc17d-131b-42a5-b8c1-924c41afb3ae', name='MOTOR A',
    device_type=DeviceType.smartcheck, asset_type=AssetType.e_motor,
    iso_class=ISOClass.i_small_machines,
    bearing_uuid='df690f0c-9920-4d15-91b4-279a83ea937c'
)
MEASURING_02 = MeasuringPoint(
    uuid='19c962f7-a697-4636-b1b4-83f604862173', name='FAN A',
    device_type=DeviceType.prolink, asset_type=AssetType.fan,
    iso_class=ISOClass.ii_medium_machines_rigid,
    bearing_uuid='cf632e55-d05a-432c-83cd-022bebf68b44'
)
MEASURING_03 = MeasuringPoint(
    uuid='7faf2647-c6d8-4461-844a-21c77a1d38ea', name='PUMP A',
    device_type=DeviceType.procheck, asset_type=AssetType.pump,
    iso_class=ISOClass.ii_medium_machines_elastic,
    bearing_uuid='57d0f355-3449-454f-93db-2073a2139946'
)
