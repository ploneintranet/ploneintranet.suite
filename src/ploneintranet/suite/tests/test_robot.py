import os
import unittest

import robotsuite
from ploneintranet.suite.testing import PLONEINTRANET_SUITE_ROBOT
from plone.testing import layered


def test_suite():
    suite = unittest.TestSuite()
    current_dir = os.path.abspath(os.path.dirname(__file__))
    acceptance_dir = os.path.join(current_dir, 'acceptance')
    acceptance_tests = [os.path.join('acceptance', doc) for doc in
                        os.listdir(acceptance_dir) if doc.endswith('.robot')
                        and doc.startswith('test')]
    for test in acceptance_tests:
        suite.addTests([
            layered(robotsuite.RobotTestSuite(test),
                    layer=PLONEINTRANET_SUITE_ROBOT),
        ])
    return suite

