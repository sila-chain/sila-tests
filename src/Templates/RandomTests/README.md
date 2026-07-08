# Running Random Tests

1. Install `retestsil` (including `geth`) inside docker
   [as explained here](https://sila-tests.readthedocs.io/en/latest/retestsil-tutorial.html#retestsil-in-a-docker-container).

1. Clone the tests (https://github.com/sila/tests) into ~/tests
   ```
   cd ~
   git clone https://github.com/sila/tests
   ```

1. Download and run besu
   ```
   docker run -p 8545:8545 -p 13001:30303 \
      hyperledger/besu:develop retestsil --rpc-http-port 8545 \
      --host-allowlist '*' # --logging ALL
   ```

1. Edit `config` to put the correct IP for besu and copy it to
   `~/tests/config/besu/config`. You might need to do this as root.

1. Run `./runTests.sh`. It is an endless loop that generates and runs
   tests. Failed tests are saved as
   `/tmp/fail-on-<client>-<test type>-<unique value>Filler.yml`.

   Run `./runTests.sh -?` to see the command line options.
