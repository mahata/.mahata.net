## Prerequisite

Following software is needed to install mahata.net.

* Python 2.7
  * pip
  * virtualenv
* Git

## How to install (to local machine)

Following command list is a step-by-step instruction to install web-presentations to your local computer.

    $ cd /PATH/TO/INSTALL
    $ git clone git@github.com:mahata/web-presentations.git
    $ virtualenv ~/web-presentations
    $ source ~/web-presentations/bin/activate
    $ cd web-presentations
    $ pip install -r requirements.txt
    $ cp local-add-config.sh.sample local-add-config.sh
    $ source local-add-config.sh
    $ python web.py

After issuing commands above, you can access to the server via http://localhost:5000/.
