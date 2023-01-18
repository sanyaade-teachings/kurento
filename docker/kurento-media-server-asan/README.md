[![Kurento logo](https://secure.gravatar.com/avatar/21a2a12c56b2a91c8918d5779f1778bf?s=120)](https://kurento.openvidu.io/)



# Kurento Media Server with AddressSanitizer

This Docker image contains a special build of Kurento Media Server with [AddressSanitizer](https://github.com/google/sanitizers/wiki/AddressSanitizer), the memory error detector that comes built-in with GCC, the C and C++ compiler that Kurento uses.

This memory error detector helps finding about out-of-bounds accesses, use-after-free errors, and other types of programming mistakes that can cause memory corruption and crashes.

Usage information for the Kurento Media Server Docker images is in the appropriate page in Docker Hub:

[kurento/kurento-media-server](https://hub.docker.com/r/kurento/kurento-media-server)



## About Kurento

Kurento is an open source software project providing a platform suitable for creating modular applications with advanced real-time communication capabilities. To know more about Kurento, please visit the project website: https://kurento.openvidu.io/.

All source code belonging to the Kurento project can be found in the [Kurento GitHub organization page](https://github.com/Kurento).



## FIWARE Platform

[![FIWARE Chapter](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/media-streams.svg)](https://www.fiware.org/developers/catalogue/)
[![FIWARE Member Status](https://nexus.lab.fiware.org/static/badges/statuses/kurento.svg)](https://www.fiware.org/developers/catalogue/)
:mortar_board: [FIWARE Academy](https://fiware-academy.readthedocs.io/en/latest/processing/kurento)

The Kurento project is part of [FIWARE]. For more information check the FIWARE documentation for [Real-Time Media Stream Processing](https://fiwaretourguide.readthedocs.io/en/latest/processing/kurento/introduction/).

Kurento has been rated within [FIWARE] as follows:

- **Version Tested:**
  ![](https://img.shields.io/badge/dynamic/json.svg?label=Version&url=https://fiware.github.io/catalogue/json/kurento.json&query=$.version&colorB=blue)
- **Documentation:**
  ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Completeness&url=https://fiware.github.io/catalogue/json/kurento.json&query=$.docCompleteness&colorB=blue)
  ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Usability&url=https://fiware.github.io/catalogue/json/kurento.json&query=$.docSoundness&colorB=blue)
- **Responsiveness:**
  ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Respond&url=https://fiware.github.io/catalogue/json/kurento.json&query=$.timeToCharge&colorB=blue)
  ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Time%20to%20Fix&url=https://fiware.github.io/catalogue/json/kurento.json&query=$.timeToFix&colorB=blue)
- **FIWARE Testing:**
  ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Tests%20Passed&url=https://fiware.github.io/catalogue/json/kurento.json&query=$.failureRate&colorB=blue)
  ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Scalability&url=https://fiware.github.io/catalogue/json/kurento.json&query=$.scalability&colorB=blue)
  ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Performance&url=https://fiware.github.io/catalogue/json/kurento.json&query=$.performance&colorB=blue)
  ![ ](https://img.shields.io/badge/dynamic/json.svg?label=Stability&url=https://fiware.github.io/catalogue/json/kurento.json&query=$.stability&colorB=blue)

Kurento is also part of the [NUBOMEDIA](https://nubomedia.readthedocs.io/en/latest/) research initiative.

The Open API specification, also known as [Kurento Protocol](https://doc-kurento.readthedocs.io/en/latest/features/kurento_api.html), is available at [Stream-oriented Open API](http://docs.streamoriented.apiary.io/).

[FIWARE]: https://www.fiware.org/



## Documentation

Kurento provides detailed [documentation](https://kurento.openvidu.io/documentation) including tutorials, installation and development guides.



## Useful Links

Usage:

* [Installation Guide](https://doc-kurento.readthedocs.io/en/latest/user/installation.html)
* [Docker Image](https://hub.docker.com/r/kurento/kurento-media-server)
* [Contribution Guide](https://doc-kurento.readthedocs.io/en/latest/project/contribute.html)
* [Developer Guide](https://doc-kurento.readthedocs.io/en/latest/dev/dev_guide.html)

Issues:

* [Bug Tracker](https://github.com/Kurento/kurento/issues)
* [Support](https://doc-kurento.readthedocs.io/en/latest/user/support.html)

News:

* [Kurento Blog](https://kurento.openvidu.io/blog)
* [Community Discussion](https://groups.google.com/forum/#!forum/kurento)

Training:

* [Kurento tutorials](https://doc-kurento.readthedocs.io/en/latest/user/tutorials.html)



## Testing

Kurento has a full set of different tests mainly focused in the integrated and system tests, more specifically e2e tests that anyone can run to assess different parts of Kurento, namely functional, stability, tutorials, and API.

In order to assess properly Kurento from a final user perspective, a rich suite of E2E tests has been designed and implemented. To that aim, the Kurento Testing Framework (KTF) has been created. KTF is a part of the Kurento project aimed to carry out end-to-end (E2E) tests for Kurento. KTF has been implemented on the top of two well-known open-source testing frameworks: JUnit and Selenium.

If you want to know more about the Kurento Testing Framework and how to run all the available tests for Kurento you will find more information in [Kurento developers documentation > Testing](https://doc-kurento.readthedocs.io/en/latest/dev/testing.html).



## License

[![License badge](https://img.shields.io/github/license/Kurento/kurento?label=License&logo=apache)](https://www.apache.org/licenses/LICENSE-2.0)

```
Copyright 2023 Kurento

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```