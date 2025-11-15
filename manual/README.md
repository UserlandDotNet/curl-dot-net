# CurlDotNet Manual

Welcome to the CurlDotNet comprehensive manual! Everything in this folder is designed as an in-depth operating manual for people who want more than the quick README overview—architects, SDK authors, SREs, and anyone migrating production workloads from shell-based curl.

Use the table below to jump directly to the guide you need. Every section includes rationale, architecture notes, and runnable code samples. If you are unsure where to begin, read **01 - Introduction** first and then pick the API surface (curl strings, fluent builder, or LibCurl) that matches your project.

## 📚 Table of Contents

### Foundations
- [01 - Introduction](01-Introduction.md) – Mission, architecture, and key features.
- [02 - Microsoft & .NET Foundation](02-Microsoft-And-DotNet-Foundation.md) – Ecosystem alignment and enterprise readiness.
- [03 - Future Vision: UserlandDotNet](03-Future-Vision-UserlandDotNet.md) – Roadmap for bringing userland tools to .NET.
- [04 - Compatibility Matrix](04-Compatibility-Matrix.md) – Frameworks, runtimes, and platform support (MAUI, Unity, Xamarin, containers, PowerShell).
- [Memory vs Disk Output](../MEMORY_VS_DISK.md) – Strategies for streaming vs buffering large responses.

### Tutorials & How-To Guides
- [05 - LibCurl Tutorial](05-LibCurl-Tutorial.md) – Stateful client workflows, dependency injection patterns, per-request overrides, and enterprise recipes using `CurlDotNet.Lib.LibCurl`.
- [06 - Curl Command Tutorials](06-Curl-Command-Tutorials.md) – Copy/paste friendly walkthroughs mapping canonical curl flags (`-H`, `-d`, `-F`, `-L`, `-x`, etc.) to CurlDotNet behavior, inspired by official curl guides.
- _Upcoming:_ Fluent builder deep dives, middleware authoring, parity validation playbooks, and performance benchmarking instructions. Follow `CONTINUING_WORK.md` for the live backlog.

### Cross-References
- [EXAMPLES.md](../EXAMPLES.md) – Language-specific samples (C#, F#, VB.NET) and real-world scenarios.
- [docs/ADVANCED.md](../docs/ADVANCED.md) – Middleware, handler extensibility, and advanced namespaces.
- [REAL_WORLD_EXAMPLES.md](../REAL_WORLD_EXAMPLES.md) – Production-grade blueprints you can adapt immediately.
- [DEVELOPERS.md](../DEVELOPERS.md) – Engineering workflow expectations (testing, coverage, tracing).

### Contributing & Governance
- [Contributing Guidelines](../CONTRIBUTING.md) – Coding standards, review requirements, and PR checklist.
- [Code of Conduct](../CODE_OF_CONDUCT.md) – Community expectations.

---

**Last Updated:** 2025-11-15  
**Version:** Manual v1.2 (living document—update date when editing)

