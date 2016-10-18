# coding: utf-8

"""
    author: Loïc M. DIVAD
    date: 2016-10-20
    see also: ...
"""

import os
import sys
import json
import logging
import urllib3
import pandas as pd
from datetime import datetime
from optparse import OptionParser


class optMock:
    def __init__(self):
        self.folder = '~/Github/ReportX/TP-kafka/data/'

optparser = OptionParser()
optparser.add_option("-d", "--data", dest="folder", default="~/data/", help="path to the file train.csv")