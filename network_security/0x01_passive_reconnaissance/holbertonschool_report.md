Security Reconnaissance Report: holbertonschool.com

Overview
This report documents the passive reconnaissance performed on the holbertonschool.com domain to identify infrastructure patterns, technology stack, and network exposure using Shodan.

Network Infrastructure
Based on the analysis, the domain relies heavily on cloud-based infrastructure.
- **Hosting Provider:** Amazon Data Services (France).
- **Identified IP Addresses:** - 52.47.143.83
    - 35.180.27.154

Technology Stack
The subdomains exhibit consistent architectural choices typical of modern web platforms:
- **Web Servers:** Nginx/1.18.0 and Nginx/1.21.6 (Ubuntu).
- **Encryption:** Secure communication is enforced via TLSv1.2 and TLSv1.3.
- **Certificates:** SSL/TLS certificates are provided by Let's Encrypt, indicating an automated security implementation.
- **Content Delivery:** The headers indicate the use of "chunked" transfer encoding, suggesting dynamic content delivery.

Observed Network Behavior
Several subdomains (e.g., yriry2.holbertonschool.com) return a 301 Moved Permanently status, redirecting traffic to the canonical domain. This structure suggests a centralized redirection policy to ensure SEO and security consistency.

Conclusion
The infrastructure is well-maintained, utilizing standard, secure, and updated web technologies. The reliance on AWS infrastructure and Nginx servers provides a stable and scalable environment.