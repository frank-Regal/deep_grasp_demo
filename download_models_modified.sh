#!/bin/bash

# Copyright ©2017. The Regents of the University of California (Regents).
# All Rights Reserved. Permission to use, copy, modify, and distribute this
# software and its documentation for educational, research, and not-for-profit
# purposes, without fee and without a signed licensing agreement, is hereby
# granted, provided that the above copyright notice, this paragraph and the
# following two paragraphs appear in all copies, modifications, and
# distributions. Contact The Office of Technology Licensing, UC Berkeley, 2150
# Shattuck Avenue, Suite 510, Berkeley, CA 94720-1620, (510) 643-7201,
# otl@berkeley.edu,
# http://ipira.berkeley.edu/industry-info for commercial licensing opportunities.

# IN NO EVENT SHALL REGENTS BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT, SPECIAL,
# INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS, ARISING OUT OF
# THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF REGENTS HAS BEEN
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# REGENTS SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE. THE SOFTWARE AND ACCOMPANYING DOCUMENTATION, IF ANY, PROVIDED
# HEREUNDER IS PROVIDED "AS IS". REGENTS HAS NO OBLIGATION TO PROVIDE
# MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
cd ./../../../
mkdir -p models

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1fbC0sGtVEUmAy7WPT_J-50IuIInMR9oO' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1fbC0sGtVEUmAy7WPT_J-50IuIInMR9oO" -O models/model_zoo.zip && rm -rf /tmp/cookies.txt

cd models
unzip -a model_zoo.zip
cd model_zoo
unzip -a GQCNN-2.0.zip
mv GQ-Image-Wise GQCNN-2.0
unzip -a GQCNN-2.1.zip
mv GQ-Bin-Picking-Eps90 GQCNN-2.1
unzip -a GQCNN-3.0.zip
mv GQ-Suction GQCNN-3.0
unzip -a GQCNN-4.0-PJ.zip
unzip -a GQCNN-4.0-SUCTION.zip
unzip -a FC-GQCNN-4.0-PJ.zip
unzip -a FC-GQCNN-4.0-SUCTION.zip
cd ../..
