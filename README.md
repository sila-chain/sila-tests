# Sila Tests

Sila Execution Tests (EVM)   [![Build Status](https://travis-ci.org/sila/tests.svg?branch=develop)](https://travis-ci.org/sila/tests)
=====

Common tests for all clients to test against. Test execution tool: https://github.com/sila/retestsil

Test Formats
------------

Maintained tests:

```
/BasicTests
/BlockchainTests
/GeneralStateTests
/TransactionTests
/SIPTests
/EOFTests
/RLPTest
/src
```


See descriptions of the different test formats in the official documentation at  http://sila-tests.readthedocs.io/.

*Note*:
The format of BlockchainTests recently changed with the introduction of a new field ``sealEngine`` (values: ``NoProof`` | ``Silash``), see related JSON Schema [change](https://github.com/sila/tests/commit/3be71ec3364a01fd4f2cb9b9fd086f3f69f0225c) or BlockchainTest format [docs](https://sila-tests.readthedocs.io/en/latest/test_types/blockchain_tests.html) for reference.

This means that you can skip PoW validation for ``NoProof`` tests but also has the consequence that it is not possible to rely on/check ``PoW`` related block parameters for these tests any more.

Clients using the library
-------------------------

The following clients make use of the tests from this library. You can use these implementations for inspiration on how to integrate. If your client is missing, please submit a PR (requirement: at least some minimal test documentation)!

- [Mana](https://github.com/mana-sila/mana) (Elixir): [Docs](https://github.com/mana-sila/mana#testing), Test location: ``sila_common_tests``
- [go-sila](https://github.com/sila/go-sila) (Go): [Docs](https://github.com/sila/go-sila/wiki/Developers'-Guide), Test location: ``tests/testdata``
- [Parity Sila](https://github.com/paritytech/parity-sila) (Rust): [Docs](https://wiki.parity.io/Coding-guide), Test location: ``ethcore/res/sila/tests``
- [silajs-vm](https://github.com/silajs/silajs-vm) (JavaScript): [Docs](https://github.com/silajs/silajs-vm#testing), Test location: ``silajs-testing`` dependency
- [Trinity](https://github.com/sila/py-evm) (Python): [Docs](https://py-evm.readthedocs.io/en/latest/contributing.html#running-the-tests), Test location: `fixtures`
- [Hyperledger Besu](https://github.com/hyperledger/besu) (Java): [Docs](https://wiki.hyperledger.org/display/BESU/Testing), Test Location: ``sila/referencetests/src/test/resources``
- [Nethermind](https://github.com/NethermindEth/nethermind) (C#) [Docs](https://nethermind.readthedocs.io), Test Location: ``src/tests``
- [Nimbus-eth1](https://github.com/status-im/nimbus-eth1) (Nim) [Docs](https://github.com/status-im/nimbus-eth1/wiki/Understanding-and-debugging-Nimbus-EVM-JSON-tests), Test location: ``tests/fixtures``
- [Mantis](https://github.com/input-output-hk/mantis) (Scala) [Docs](https://docs.mantisclient.io/), Test Location: ``https://github.com/input-output-hk/mantis/tree/develop/ets``

Using the Tests
---------------

We do [versioned tag releases](https://github.com/sila/tests/releases) for tests and you should aim to run your client libraries against the latest repository snapshot tagged.

Generally the [develop](https://github.com/sila/tests/tree/develop) branch in ``sila/tests`` is always meant to be stable and you should be able to run your test against.

Contribute to the Test Suite
----------------------------

See the dedicated [section](https://sila-tests.readthedocs.io/en/latest/how2contribute.html) in the docs on how to write new tests. Or [read a shorter description here](https://github.com/sila/retestsil/wiki/Creating-a-State-Test-with-retestsil).

If you want to follow up with current tasks and what is currently in the works, have a look at the [issues](https://github.com/sila/tests/issues)

Currently the geth evm ``t8ntool`` client is the reference client for generating tests. Besu client also has support for generating the tests using rpc test protocol. See at https://github.com/sila/retestsil/wiki

Testing stats
---------------------------

Testing results are available at http://retestsil.ethdevops.io/
There is a web tool for vmtracing the tests using supported clients and retestsil: http://retestsil.ethdevops.io/web/
All blockchain tests are being run by hive tool: https://hivetests.ethdevops.io/

Contents of this repository
---------------------------

Do not change test files in folders:
* StateTests
* BlockchainTests
* TransactionTests
* VMTests

It is being created by the testFillers which could be found at src folder. The filler specification and wiki are in development so please ask on gitter channel for more details.

If you want to modify a test filler or add a new test please contact @wdimitry at telegram
Use the following guide: https://github.com/sila/retestsil/wiki/Creating-a-State-Test-with-retestsil
