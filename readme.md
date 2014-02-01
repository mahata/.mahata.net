## Prerequisite

Following software is needed to install mahata.net.

* Python 2.7
  * pip
  * virtualenv
* Git
* heroku (gem package)

## How to install (to local machine)

Following command list is a step-by-step instruction to install mahata.net to your local computer.

    $ cd /PATH/TO/INSTALL
    $ git clone git@github.com:mahata/mahata.net.git
    $ virtualenv ~/mahata.net
    $ source ~/mahata.net/bin/activate
    $ cd mahata.net
    $ pip install -r requirements.txt
    $ cp local-add-config.sh.sample local-add-config.sh
    $ source local-add-config.sh
    $ python web.py

After issuing commands above, you can access to the server via http://localhost:5000/.

## How to install (to heroku)

FIX ME.
