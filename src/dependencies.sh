#!/bin/bash

# Tool Name: Phishim
# Tool URI: https://github.com/SullFurix/Phishim/
# Description: Phishim is a phishing tool.
# Version: 4.0.0
# Author: SullFurix
# Author URI: https://github.com/SullFurix/
# Copyright: © 2020 SullFurix.
# License: GNU General Public License v3.0
# License URI: http://www.gnu.org/licenses/gpl-3.0.html

dependencies() {

command -v php > /dev/null 2>&1 || { echo >&2 " >>> I require php but it's not installed. Install it. Aborting. :/"; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 " >>> I require curl but it's not installed. Install it. Aborting. :/"; exit 1; }
command -v unzip > /dev/null 2>&1 || { echo >&2 " >>> I require unzip but it's not installed. Install it. Aborting. :/"; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 " >>> I require wget but it's not installed. Install it. Aborting. :/"; exit 1; }

}
