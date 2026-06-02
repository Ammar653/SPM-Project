# SOFTWARE PROJECT PLANNING AND DOCUMENTATION REPORT

---

## TITLE PAGE

<div style="text-align: center; padding: 100px 0;">

### COMSATS UNIVERSITY ISLAMABAD

### Faculty of Software Engineering

### Department of Software Engineering

---

**Course:** Software Project Management (SPM)

**Assignment Title:** Software Project Planning and Documentation

**Project Title:** Library Management System (LMS)

---

**Group Members:**
- Syed Muhammad Hassan Jamal (Roll Number: BSE-23F-038) - Project Manager & Business Analyst
- Muhammad Taha (Roll Number: BSE-23F-039) - Software Architect & QA Manager

---

**Instructor:** Miss Wajiha Naim

**Submission Date:** June 15, 2026

**Semester:** Spring 2026

</div>

---

## TABLE OF CONTENTS

1. Introduction
2. Project Description
3. Scope of the Project
4. Stakeholder Identification
5. Feasibility Study
6. Requirement Analysis
7. Work Breakdown Structure (WBS)
8. Project Schedule
9. Cost and Effort Estimation
10. Risk Management Plan
11. Resource Management Plan
12. Quality Assurance Plan
13. Communication Plan
14. Conclusion
15. References

---

## 1. INTRODUCTION

### 1.1 Background of the Project

The Library Management System (LMS) is a comprehensive software solution designed to modernize library operations in educational institutions, particularly universities and colleges. Currently, many libraries still rely on manual processes or outdated systems for managing books, member records, and transactions. This creates inefficiencies, reduces accessibility, and limits the ability to provide quality service to library patrons.

The proposed Library Management System aims to automate and streamline all library operations including book cataloging, member registration, book issuance and return, fine management, and comprehensive reporting capabilities.

### 1.2 Purpose of the Software

The primary purpose of the Library Management System is to:
- Automate book inventory management and tracking
- Simplify member registration and management
- Streamline book issuance and return processes
- Manage overdue books and fine calculations
- Provide real-time access to library resources and availability
- Generate comprehensive reports for library administrators
- Improve overall library operational efficiency and service quality

### 1.3 Problem Statement

**Current Challenges:**
1. **Manual Record Keeping:** Library staff currently maintains records manually, leading to errors and data inconsistencies
2. **Inefficient Search:** Members struggle to find books; no quick search mechanism
3. **Time-Consuming Processes:** Issuance and return processes are slow and error-prone
4. **Poor Reporting:** Difficulty in generating accurate reports for inventory and member activity
5. **Limited Accessibility:** Limited hours of operation and access to library information
6. **Fine Management Issues:** Difficulty in tracking overdue books and calculating fines accurately
7. **Scalability Issues:** Current system cannot handle growing number of books and members

### 1.4 Objectives

**Primary Objective:**
To develop a comprehensive, user-friendly Library Management System that automates and optimizes all library operations, improving efficiency, accessibility, and service quality.

**Secondary Objectives:**
- To provide real-time visibility into book inventory and availability
- To reduce manual errors and improve data accuracy
- To enable self-service member access to library resources
- To facilitate better reporting and analytics for library management
- To improve member satisfaction through faster and easier transactions
- To reduce operational costs through automation

---

## 2. PROJECT DESCRIPTION

### 2.1 System Overview

The Library Management System is a web-based application built using ASP.NET Core MVC with SQL Server database. It provides a centralized platform for managing all aspects of library operations including:

- **Book Management:** Add, update, delete, and search books in the library catalog
- **Member Management:** Register new members, manage member profiles and memberships
- **Transaction Management:** Record book issuance, returns, and track borrowing history
- **Fine Management:** Calculate and track overdue fines automatically
- **Reporting & Analytics:** Generate various reports for administrative decision-making
- **Notifications:** Email notifications for overdue books and member alerts
- **Dashboard:** Real-time statistics and analytics for library administrators

The system will be accessible through a web browser interface, providing 24/7 access to library members for searching books and checking availability.

### 2.2 Major Features

| Feature | Description |
|---------|-------------|
| User Authentication & Authorization | Secure login for members, staff, and administrators with role-based access control |
| Book Catalog Management | Complete book database with ISBN, title, author, publisher, category, and availability status |
| Member Registration | Self-service member registration with email verification and profile management |
| Book Search & Reservation | Advanced search functionality with filters; members can reserve books |
| Issue & Return Management | Track book transactions with issue date, due date, and return tracking |
| Overdue Management | Automatic calculation of overdue books and fine generation |
| Fine Payment | Online payment processing for fines; payment history tracking |
| Renewal System | Allow members to renew books if no reservation exists |
| Reports & Analytics | Comprehensive reports on inventory, member activity, and financial transactions |
| Notifications | Email notifications for book availability, overdue reminders, fine alerts |
| Admin Dashboard | Real-time statistics, system monitoring, and configuration management |

### 2.3 Expected Users

1. **Library Members/Students:** Undergraduate and postgraduate students who borrow books
2. **Library Staff:** Librarians and support staff who manage daily operations
3. **Library Administrator:** Senior staff responsible for system configuration and reporting
4. **System Administrator:** IT personnel responsible for system maintenance and security

### 2.4 Benefits of the System

1. **Increased Efficiency:** Automate routine tasks, reducing staff workload by 60%
2. **Improved Accuracy:** Minimize human errors in record keeping and calculations
3. **Better Service Quality:** Faster transactions and improved member experience
4. **24/7 Accessibility:** Members can search and reserve books anytime, anywhere
5. **Cost Reduction:** Reduce operational costs through automation (estimated 40% reduction)
6. **Data-Driven Decisions:** Comprehensive analytics for better inventory management
7. **Scalability:** System can handle growing number of books and members
8. **Security:** Secure data storage and access control

---

## 3. SCOPE OF THE PROJECT

### 3.1 In-Scope Features

**Core Features:**
1. User authentication and role-based authorization
2. Book catalog management (CRUD operations)
3. Member registration and profile management
4. Book issue and return transactions
5. Overdue tracking and fine calculation
6. Book reservation and renewal system
7. Fine payment processing (online gateway integration)
8. Search and filtering functionality
9. Reports generation (10+ standard reports)
10. Email notifications for key events
11. Admin dashboard with analytics
12. Basic book recommendation system

**Technical Scope:**
- Frontend: HTML5, CSS3, JavaScript, Bootstrap
- Backend: ASP.NET Core 6.0 MVC
- Database: SQL Server 2019
- Authentication: ASP.NET Core Identity
- ORM: Entity Framework Core
- Payment Gateway: Stripe/JazzCash integration

### 3.2 Out-of-Scope Features

1. **Advanced AI Features:** Machine learning-based recommendations (future phase)
2. **Mobile Application:** Native iOS/Android apps (planned for Phase 2)
3. **Barcode Scanning:** Physical barcode scanner hardware integration
4. **RFID Integration:** Radio Frequency Identification technology
5. **Multi-language Support:** Internationalization (except English)
6. **Advanced Analytics:** Data warehousing and business intelligence tools
7. **Integration with External Systems:** Integration with university ERP or student management systems
8. **Audio/Video Resources:** Streaming of multimedia content
9. **Social Features:** Community discussions or book clubs
10. **Physical Book Movement Tracking:** GPS or location-based tracking

### 3.3 Project Boundaries

**Geographical Boundaries:**
- Initial deployment for a single university library
- Can be extended to multiple libraries in future phases

**User Boundaries:**
- Limited to university members and staff
- Public library integration in future phase

**Data Boundaries:**
- Only current and historical library transaction data
- No integration with external library databases initially
- Historical data migration only for past 2 years

**Technical Boundaries:**
- Web-based application only (no desktop or mobile initially)
- Supports Chrome, Firefox, Safari, and Edge browsers
- Minimum resolution: 1024x768 pixels

---

## 4. STAKEHOLDER IDENTIFICATION

| Stakeholder Type | Stakeholder Name | Role/Interest |
|------------------|------------------|---------------|
| **Customer/Sponsor** | Library Director | Requires efficient system to manage operations and reduce costs |
| **End Users (Primary)** | Library Members/Students | Want easy access to books and quick transactions |
| **End Users (Secondary)** | Library Staff | Need tools to manage daily operations efficiently |
| **Development Team Lead** | Syed Muhammad Hassan Jamal | Project Manager - Responsible for planning and execution |
| **Technical Lead** | Muhammad Taha | Software Architect - Ensures technical feasibility and best practices |
| **QA Lead** | Muhammad Taha | QA Manager - Ensures quality and identifies defects |
| **IT Support** | IT Administrator | Maintains system infrastructure and security |
| **University Administration** | Registrar Office | Provides member data and business requirements |

---

## 5. FEASIBILITY STUDY

### 5.1 Technical Feasibility

**Assessment:** ✅ **HIGHLY FEASIBLE**

**Technology Stack:**

| Component | Technology | Justification |
|-----------|-----------|---------------|
| **Backend Framework** | ASP.NET Core 6.0 MVC | Mature, scalable, excellent performance |
| **Database** | SQL Server 2019 | Robust, secure, reliable for enterprise applications |
| **Frontend** | HTML5, CSS3, Bootstrap | Standard, responsive, cross-browser compatible |
| **ORM** | Entity Framework Core | Built-in, efficient, supports LINQ queries |
| **Authentication** | ASP.NET Core Identity | Secure, role-based, industry standard |
| **Payment Gateway** | Stripe/JazzCash | Reliable, secure payment processing |
| **Hosting** | Azure/AWS | Scalable cloud infrastructure |
| **Version Control** | Git (GitHub) | Distributed version control, collaboration |
| **API Development** | RESTful APIs | Standard for web services |

**Technical Risks & Mitigations:**
1. **Integration Complexity:** Use proven libraries and frameworks
2. **Database Performance:** Proper indexing and query optimization
3. **Security Concerns:** Follow OWASP guidelines and security best practices

**Conclusion:** All required technologies are mature, well-documented, and proven in production environments. Both team members have experience with these technologies through academic projects.

### 5.2 Economic Feasibility

**Assessment:** ✅ **ECONOMICALLY VIABLE**

**Cost Analysis:**

| Cost Category | Estimated Cost | Duration |
|---------------|-----------------|----------|
| **Human Resources** | | |
| Project Manager/Analyst (1) | PKR 1,500,000 | 6 months |
| Software Architect/QA (1) | PKR 1,500,000 | 6 months |
| **Subtotal HR** | **PKR 3,000,000** | |
| | | |
| **Software & Tools** | | |
| Visual Studio Professional License (2) | PKR 100,000 | 1 year |
| SQL Server Developer Edition | FREE | - |
| Azure DevOps | FREE | - |
| Project Management Tools | FREE (GitHub Projects) | - |
| **Subtotal Software** | **PKR 100,000** | |
| | | |
| **Infrastructure** | | |
| Azure Web App Hosting | PKR 200,000 | 6 months |
| SQL Server Hosting | PKR 300,000 | 6 months |
| Email Service | PKR 50,000 | 6 months |
| **Subtotal Infrastructure** | **PKR 550,000** | |
| | | |
| **Training & Documentation** | | |
| Documentation & User Manual | PKR 100,000 | 1 month |
| **Subtotal Training** | **PKR 100,000** | |
| | | |
| **TOTAL PROJECT COST** | **PKR 3,750,000** | **6 months** |

**Economic Conclusion:** The project is economically viable with low cost due to only 2-member team using open-source and free tools. ROI is immediate upon deployment.

### 5.3 Operational Feasibility

**Assessment:** ✅ **OPERATIONALLY FEASIBLE**

**Organizational Readiness:**
- ✅ IT support team available for hosting
- ✅ Infrastructure to host web applications exists
- ✅ Clear business requirements can be defined
- ✅ University stakeholder buy-in confirmed

**Team Capabilities:**
- Both team members are senior (BSE-23F batch) with strong technical background
- Experience with ASP.NET Core and SQL Server from coursework
- Capability to manage both development and quality assurance
- Proven project management skills from previous academic projects

**Operational Conclusion:** The organization is ready to implement and maintain this system. The 2-member team is capable of delivering a high-quality system.

### 5.4 Schedule Feasibility

**Assessment:** ✅ **SCHEDULE FEASIBLE**

**Project Timeline:** 6 Months (26 weeks)

| Phase | Duration | Feasibility |
|-------|----------|-------------|
| Requirements & Planning | 3 weeks | ✅ Feasible |
| System Design | 4 weeks | ✅ Feasible |
| Development | 12 weeks | ✅ Feasible |
| Testing & QA | 4 weeks | ✅ Feasible |
| Deployment & Training | 2 weeks | ✅ Feasible |
| Post-Implementation Support | 1 week | ✅ Feasible |

**Resource Availability:**
- 2 dedicated developers available full-time
- No competing projects during this period
- Infrastructure ready

**Schedule Conclusion:** The 6-month timeline is realistic and achievable with proper time management and focus.

---

## 6. REQUIREMENT ANALYSIS

### 6.1 Functional Requirements

| Req ID | Requirement | Description | Priority |
|--------|-------------|-------------|----------|
| **FR-001** | User Login | System shall allow users to login with email/username and password | **High** |
| **FR-002** | Role-Based Access | System shall enforce different access levels based on user roles (Admin, Staff, Member) | **High** |
| **FR-003** | Book Search | System shall allow members to search books by title, author, ISBN, or category | **High** |
| **FR-004** | Book Availability Check | System shall display real-time availability status of each book | **High** |
| **FR-005** | Book Issue | System shall record book issue with issue date and due date (14-day default) | **High** |
| **FR-006** | Book Return | System shall process book returns and update inventory | **High** |
| **FR-007** | Overdue Calculation | System shall automatically identify overdue books and calculate fines | **High** |
| **FR-008** | Fine Payment | System shall process online payment for fines using secure payment gateway | **High** |
| **FR-009** | Member Registration | System shall allow new member registration with email verification | **High** |
| **FR-010** | Member Profile | System shall allow members to view and update their profile | **Medium** |
| **FR-011** | Book Reservation | System shall allow members to reserve unavailable books | **High** |
| **FR-012** | Book Renewal | System shall allow members to renew books if no reservation exists | **Medium** |
| **FR-013** | Notification System | System shall send email notifications for overdue books and availability | **Medium** |
| **FR-014** | Reports Generation | System shall generate 10+ standard reports (inventory, member activity, etc.) | **High** |
| **FR-015** | Admin Dashboard | System shall display real-time statistics and analytics for administrators | **Medium** |
| **FR-016** | Book Catalog Management | System shall allow staff to add, update, delete books from catalog | **High** |
| **FR-017** | Member Management | System shall allow staff to manage member records and memberships | **High** |
| **FR-018** | Fine Configuration | System shall allow admin to configure fine amounts and overdue periods | **Medium** |
| **FR-019** | Password Reset | System shall allow users to reset password via email | **Medium** |
| **FR-020** | Export Reports | System shall allow export of reports in PDF and Excel formats | **Low** |

### 6.2 Non-Functional Requirements

| Req ID | Requirement | Description | Priority | Metric |
|--------|-------------|-------------|----------|--------|
| **NFR-001** | Security | System shall use HTTPS, encrypt passwords with bcrypt, prevent SQL injection | **Critical** | OWASP Top 10 compliance |
| **NFR-002** | Performance | System shall load pages in <3 seconds under normal load | **High** | Page load time |
| **NFR-003** | Scalability | System shall support up to 1,000 concurrent users | **High** | Concurrent users |
| **NFR-004** | Availability | System shall have 99% uptime SLA | **High** | Uptime percentage |
| **NFR-005** | Data Backup | System shall perform daily automated backups | **Critical** | Backup frequency |
| **NFR-006** | Usability | System shall be intuitive with average learning time <2 hours | **High** | User feedback |
| **NFR-007** | Compatibility | System shall work on Chrome, Firefox, Safari, Edge browsers | **High** | Browser testing |
| **NFR-008** | Accessibility | System shall comply with WCAG 2.1 AA standards | **Medium** | Accessibility audit |
| **NFR-009** | Reliability | System shall have <1% transaction failure rate | **High** | Transaction logs |
| **NFR-010** | Maintainability | Code shall follow SOLID principles and be documented | **Medium** | Code review |
| **NFR-011** | Response Time | Database queries shall complete in <1 second | **High** | Query performance |
| **NFR-012** | Logging | System shall log all critical operations for audit trail | **High** | Audit logs |
| **NFR-013** | Data Integrity | System shall prevent duplicate entries and maintain referential integrity | **Critical** | Database constraints |
| **NFR-014** | Recovery | System shall recover from failure within 1 hour | **High** | Recovery time |

---

## 7. WORK BREAKDOWN STRUCTURE (WBS)

### Project Hierarchy:

```
Library Management System (LMS)
│
├── 1. Project Management & Planning (3 weeks)
│   ├── 1.1 Kickoff Meeting & Team Formation
│   ├── 1.2 Requirements Gathering & Documentation
│   ├── 1.3 Risk Assessment & Planning
│   ├── 1.4 Project Schedule & Timeline Creation
│   └── 1.5 Resource Allocation & Approval
│
├── 2. System Design (4 weeks)
│   ├── 2.1 Database Design & Schema Creation
│   │   ├── 2.1.1 ER Diagram Creation
│   │   ├── 2.1.2 Table Structure Definition
│   │   └── 2.1.3 Relationships & Constraints
│   ├── 2.2 UI/UX Design
│   │   ├── 2.2.1 Wireframe Creation
│   │   ├── 2.2.2 Mockup Design
│   │   └── 2.2.3 Design System & Guidelines
│   ├── 2.3 System Architecture Design
│   │   ├── 2.3.1 Architecture Diagram
│   │   ├── 2.3.2 Component Design
│   │   └── 2.3.3 API Specification
│   ├── 2.4 Security Design
│   │   ├── 2.4.1 Authentication Mechanism
│   │   ├── 2.4.2 Authorization Strategy
│   │   └── 2.4.3 Data Protection Plan
│   └── 2.5 Design Review & Approval
│
├── 3. Development (12 weeks)
│   ├── 3.1 Setup & Infrastructure (1 week)
│   │   ├── 3.1.1 Development Environment Setup
│   │   ├── 3.1.2 Database Creation & Configuration
│   │   ├── 3.1.3 Repository Setup (Git)
│   │   └── 3.1.4 CI/CD Pipeline Configuration
│   ├── 3.2 Backend Development (6 weeks)
│   │   ├── 3.2.1 Database Models & Context
│   │   ├── 3.2.2 Authentication & Authorization
│   │   ├── 3.2.3 Book Management API
│   │   ├── 3.2.4 Member Management API
│   │   ├── 3.2.5 Transaction Management API
│   │   ├── 3.2.6 Fine & Payment API
│   │   ├── 3.2.7 Report Generation Module
│   │   └── 3.2.8 Notification Service
│   ├── 3.3 Frontend Development (6 weeks)
│   │   ├── 3.3.1 Login & Registration Pages
│   │   ├── 3.3.2 Member Dashboard
│   │   ├── 3.3.3 Book Search & Browse
│   │   ├── 3.3.4 Book Issue/Return Pages
│   │   ├── 3.3.5 Member Profile Management
│   │   ├── 3.3.6 Admin Dashboard & Management Pages
│   │   ├── 3.3.7 Reports & Analytics Pages
│   │   └── 3.3.8 Payment Gateway Integration
│   ├── 3.4 Integration (2 weeks)
│   │   ├── 3.4.1 Frontend-Backend Integration
│   │   ├── 3.4.2 Payment Gateway Integration
│   │   ├── 3.4.3 Email Notification Service
│   │   └── 3.4.4 Logging & Monitoring Setup
│   └── 3.5 Code Review & Refactoring
│
├── 4. Testing & QA (4 weeks)
│   ├── 4.1 Unit Testing (1 week)
│   │   ├── 4.1.1 Backend Unit Tests
│   │   └── 4.1.2 Frontend Unit Tests
│   ├── 4.2 Integration Testing (1 week)
│   │   ├── 4.2.1 API Testing
│   │   └── 4.2.2 Component Integration Tests
│   ├── 4.3 System Testing (1 week)
│   │   ├── 4.3.1 Functionality Testing
│   │   ├── 4.3.2 Performance Testing
│   │   └── 4.3.3 Security Testing
│   ├── 4.4 User Acceptance Testing (0.5 week)
│   │   ├── 4.4.1 UAT Environment Setup
│   │   └── 4.4.2 UAT Execution & Sign-off
│   └── 4.5 Bug Fixes & Regression Testing
│
├── 5. Deployment & Release (2 weeks)
│   ├── 5.1 Production Environment Setup
│   ├── 5.2 Data Migration (if applicable)
│   ├── 5.3 Production Deployment
│   ├── 5.4 Post-Deployment Testing
│   └── 5.5 Hotfix Support
│
└── 6. Training & Documentation (1 week)
    ├── 6.1 User Manual Creation
    ├── 6.2 Video Tutorial Creation
    ├── 6.3 Staff Training Delivery
    ├── 6.4 Admin Training Delivery
    └── 6.5 Documentation Handover
```

---

## 8. PROJECT SCHEDULE

### 8.1 Timeline and Milestones

| S# | Milestone | Description | Target Date | Duration | Status |
|----|-----------|-------------|-------------|----------|--------|
| 1 | Kickoff | Project kickoff meeting and team formation | Week 1 | 1 day | Pending |
| 2 | Requirements Approved | All requirements finalized and approved by stakeholders | Week 3 | Ongoing | Pending |
| 3 | Design Complete | Database, UI/UX, and system architecture design completed | Week 7 | 4 weeks | Pending |
| 4 | Development Start | Backend and frontend development begins | Week 8 | - | Pending |
| 5 | Backend Complete | All backend APIs and services developed | Week 14 | 6 weeks | Pending |
| 6 | Frontend Complete | All user interfaces and pages developed | Week 14 | 6 weeks | Pending |
| 7 | Integration Complete | Frontend and backend integration completed | Week 16 | 2 weeks | Pending |
| 8 | Testing Complete | Unit, integration, system, and UAT testing completed | Week 20 | 4 weeks | Pending |
| 9 | Production Ready | System ready for production deployment | Week 21 | 1 week | Pending |
| 10 | Go Live | System deployed to production | Week 22 | 1 day | Pending |
| 11 | Training Complete | Staff and admin training completed | Week 23 | 1 week | Pending |
| 12 | Project Closure | Project closure and handover to support team | Week 26 | - | Pending |

### 8.2 Detailed Schedule by Phase

**Phase 1: Planning & Requirements (Weeks 1-3)**
- Week 1: Kickoff, team formation, project initiation
- Week 2: Requirements gathering, stakeholder interviews
- Week 3: Requirements documentation, approval

**Phase 2: Design (Weeks 4-7)**
- Week 4-5: Database design, system architecture
- Week 5-6: UI/UX design, wireframes, mockups
- Week 7: Design review and approval

**Phase 3: Development (Weeks 8-19)**
- Week 8-9: Infrastructure setup, environment configuration
- Week 10-15: Backend development (APIs, services)
- Week 10-15: Frontend development (UI pages)
- Week 16-19: Integration, testing, bug fixes

**Phase 4: Testing (Weeks 20-21)**
- Week 20: Unit testing, integration testing, system testing
- Week 21: UAT, bug fixes, performance optimization

**Phase 5: Deployment (Weeks 22-23)**
- Week 22: Production deployment, post-deployment testing
- Week 23: Training, documentation

**Phase 6: Closure (Weeks 24-26)**
- Weeks 24-26: Support, monitoring, project closure

### 8.3 Gantt Chart

```
Task                          Week 1-26 Progress
======================================================
1. Planning & Requirements    [████████░░░░░░░░░░░░░░░░░░] 12%
   1.1 Kickoff               [████░░░░░░░░░░░░░░░░░░░░░░] 1 week
   1.2 Requirements          [░████░░░░░░░░░░░░░░░░░░░░░] 2 weeks
   1.3 Approval              [░░████░░░░░░░░░░░░░░░░░░░░] 1 week

2. System Design              [░░░░████████░░░░░░░░░░░░░░] 15%
   2.1 Database Design       [░░░░████░░░░░░░░░░░░░░░░░░] 2 weeks
   2.2 UI/UX Design          [░░░░░████░░░░░░░░░░░░░░░░░] 2 weeks
   2.3 Architecture          [░░░░░░████░░░░░░░░░░░░░░░░] 2 weeks
   2.4 Design Review         [░░░░░░░░████░░░░░░░░░░░░░░] 1 week

3. Development                [░░░░░░░░░░████████████░░░░░] 46%
   3.1 Setup                 [░░░░░░░░░░██░░░░░░░░░░░░░░░] 1 week
   3.2 Backend               [░░░░░░░░░░░░████████░░░░░░░░] 6 weeks
   3.3 Frontend              [░░░░░░░░░░░░████████░░░░░░░░] 6 weeks
   3.4 Integration           [░░░░░░░░░░░░░░░░░░████░░░░░░] 2 weeks

4. Testing & QA               [░░░░░░░░░░░░░░░░░░░░████████] 15%
   4.1 Unit Testing          [░░░░░░░░░░░░░░░░░░░░██░░░░░░] 1 week
   4.2 Integration Testing   [░░░░░░░░░░░░░░░░░░░░░██░░░░░] 1 week
   4.3 System Testing        [░░░░░░░░░░░░░░░░░░░░░░██░░░░] 1 week
   4.4 UAT                   [░░░░░░░░░░░░░░░░░░░░░░░█���░░░] 1 week

5. Deployment & Training      [░░░░░░░░░░░░░░░░░░░░░░░░███░] 8%
   5.1 Production Deploy     [░░░░░░░░░░░░░░░░░░░░░░░░██░░] 1 week
   5.2 Training              [░░░░░░░░░░░░░░░░░░░░░░░░░██░] 1 week

6. Project Closure            [░░░░░░░░░░░░░░░░░░░░░░░░░░██] 4%
   6.1 Support & Monitoring  [░░░░░░░░░░░░░░░░░░░░░░░░░░░░] 2 weeks
```

---

## 9. COST AND EFFORT ESTIMATION

### 9.1 Human Resources Cost

| Role | Count | Monthly Rate | Duration | Total Cost |
|------|-------|--------------|----------|-----------|
| Project Manager/Analyst (Syed Muhammad Hassan Jamal) | 1 | PKR 200,000 | 6 months | PKR 1,200,000 |
| Software Architect/QA (Muhammad Taha) | 1 | PKR 200,000 | 6 months | PKR 1,200,000 |
| **TOTAL HR COST** | **2** | - | **6 months** | **PKR 2,400,000** |

### 9.2 Software & Tools Cost

| Item | Unit Cost | Quantity | Duration | Total Cost |
|------|-----------|----------|----------|-----------|
| Visual Studio Professional License (2 Developers) | FREE (Student License) | 2 | 1 year | FREE |
| SQL Server Developer Edition | FREE | 1 | 1 year | FREE |
| Azure DevOps (Free Tier) | FREE | 1 | 6 months | FREE |
| GitHub (Free Tier) | FREE | 1 | 6 months | FREE |
| **TOTAL SOFTWARE COST** | - | - | - | **FREE** |

### 9.3 Infrastructure & Hosting Cost

| Item | Monthly Cost | Duration | Total Cost |
|-----|--------------|----------|-----------|
| Azure Web App Hosting (App Service Free/Basic) | PKR 50,000 | 6 months | PKR 300,000 |
| SQL Server Database (Azure SQL Basic) | PKR 50,000 | 6 months | PKR 300,000 |
| Email Service (SendGrid Free Tier) | FREE | 6 months | FREE |
| Domain & SSL Certificate | PKR 5,000 | 1 time | PKR 5,000 |
| **TOTAL INFRASTRUCTURE COST** | - | - | **PKR 605,000** |

### 9.4 Documentation & Miscellaneous

| Item | Cost |
|------|------|
| User Manual & Documentation | PKR 50,000 |
| Miscellaneous & Supplies | PKR 50,000 |
| **TOTAL MISC COST** | **PKR 100,000** |

### 9.5 Contingency (10%)

| Item | Cost |
|------|------|
| Contingency (10% of total) | PKR 310,500 |
| **TOTAL CONTINGENCY** | **PKR 310,500** |

### 9.6 TOTAL PROJECT COST SUMMARY

| Cost Category | Amount |
|---------------|--------|
| Human Resources | PKR 2,400,000 |
| Software & Tools | FREE |
| Infrastructure & Hosting | PKR 605,000 |
| Documentation & Misc | PKR 100,000 |
| Contingency (10%) | PKR 310,500 |
| **GRAND TOTAL** | **PKR 3,415,500** |

### 9.7 Development Effort Estimation

| Phase | Estimated Hours | Estimated Person-Days | Person-Months |
|-------|-----------------|----------------------|----------------|
| Planning & Requirements | 120 | 15 | 0.75 |
| System Design | 160 | 20 | 1.0 |
| Backend Development | 480 | 60 | 3.0 |
| Frontend Development | 480 | 60 | 3.0 |
| Integration & Testing | 240 | 30 | 1.5 |
| Deployment & Training | 100 | 12.5 | 0.75 |
| **TOTAL EFFORT** | **1,580 hours** | **197.5 days** | **10 PM** |

**Effort Distribution:**
- 2 people working for 6 months = 12 person-months available
- 10 person-months required = 83% utilization
- Buffer: 2 person-months for contingencies and optimization

---

## 10. RISK MANAGEMENT PLAN

### 10.1 Risk Register

| Risk ID | Risk Description | Category | Probability | Impact | Severity | Mitigation Strategy | Contingency Plan | Owner |
|---------|------------------|----------|-------------|--------|----------|-------------------|-----------------|-------|
| **R-001** | Scope Creep | Project | High (70%) | High (8/10) | **CRITICAL** | Strict change control; clear scope definition; document all changes | Prioritize features; defer non-critical features | PM |
| **R-002** | Schedule Delays | Project | Medium (50%) | High (8/10) | **HIGH** | Add 15% buffer time; aggressive progress monitoring | Work overtime; parallel task execution | PM |
| **R-003** | Technical Integration Issues | Technical | Medium (45%) | High (7/10) | **HIGH** | Early integration testing; use proven libraries | Have fallback technologies ready | Architect |
| **R-004** | Security Vulnerabilities | Security | Medium (40%) | Critical (9/10) | **CRITICAL** | Security code review; follow OWASP guidelines; penetration testing | Security patching plan; incident response | QA |
| **R-005** | Database Performance Issues | Technical | Low (30%) | High (7/10) | **MEDIUM** | Proper indexing; load testing; optimize queries early | Database tuning; scaling strategy | Architect |
| **R-006** | Team Member Illness/Unavailability | Resource | Low (20%) | Critical (9/10) | **HIGH** | Regular documentation; knowledge transfer | Document all processes; seek help from mentors/professors | PM |
| **R-007** | Payment Gateway Issues | Technical | Low (15%) | Medium (6/10) | **LOW** | Choose reliable provider; test extensively | Manual payment processing backup | Architect |
| **R-008** | Email Service Failures | Technical | Low (10%) | Low (4/10) | **LOW** | Use reliable email service; implement retry logic | Batch processing; delayed notifications | Architect |
| **R-009** | User Adoption Issues | Organizational | Medium (40%) | Medium (5/10) | **MEDIUM** | Comprehensive training; user-friendly design; clear documentation | Extended support period; feedback sessions | PM |
| **R-010** | Testing Delays | Project | Medium (50%) | Medium (6/10) | **MEDIUM** | Early testing; automated test suite; parallel testing | Extended UAT period; focus on critical tests | QA |

### 10.2 Risk Response Strategy

**Risk Prioritization:**
- **Critical (2):** Scope Creep, Security Vulnerabilities, Team Member Unavailability
- **High (2):** Schedule Delays, Technical Integration
- **Medium (4):** Database Performance, Testing Delays, User Adoption, Payment Gateway
- **Low (2):** Email Service, Other Technical Issues

**Risk Monitoring:**
- Weekly risk review in project meetings
- Risk register updated every 2 weeks
- Risk owner assigned for each risk
- Escalation path defined for high-severity risks

---

## 11. RESOURCE MANAGEMENT PLAN

### 11.1 Team Structure & Responsibilities

```
Project Sponsor/Instructor (Miss Wajiha Naim)
        |
   Project Manager
   (Syed Muhammad Hassan Jamal - BSE-23F-038)
        |
    ├── Business Analyst (PM)
    ├── Database Designer (PM)
    └── QA Manager
        (Muhammad Taha - BSE-23F-039)
        |
    ├── Software Architect (QA)
    ├── Backend Developer (QA)
    ├── Frontend Developer (QA)
    └── Quality Assurance Lead (QA)
```

### 11.2 Detailed Team Member Roles & Responsibilities

**Syed Muhammad Hassan Jamal (BSE-23F-038)**
| Responsibility | Description | Time |
|---|---|---|
| **Project Manager** | Overall project planning, scheduling, risk management, stakeholder communication, status reporting | 50% |
| **Business Analyst** | Requirements gathering, documentation, stakeholder interviews, change management | 30% |
| **Backend Developer** | API development, database queries, business logic implementation | 20% |

**Muhammad Taha (BSE-23F-039)**
| Responsibility | Description | Time |
|---|---|---|
| **Software Architect** | System design, architecture, technology decisions, technical documentation, code quality standards | 50% |
| **Frontend Developer** | UI/UX implementation, responsive design, JavaScript functionality, CSS styling | 30% |
| **QA Manager** | Test planning, test case design, quality assurance, defect management | 20% |

### 11.3 Hardware & Software Resources

**Hardware Resources:**
- Development Laptops: 2 units (i5/i7 processor, 8GB+ RAM, 256GB+ SSD)
- Testing Environment: Cloud-based (Azure/AWS)

**Software Resources:**
- **IDE:** Visual Studio Community/Professional (Free for Students)
- **Database:** SQL Server Developer Edition (Free)
- **Version Control:** Git + GitHub (Free)
- **DevOps:** Azure DevOps (Free Tier)
- **Cloud Platform:** Microsoft Azure (Free Trial + Student Credits)
- **Project Management:** GitHub Projects (Free)
- **Collaboration:** Microsoft Teams, Discord (Free)

### 11.4 Communication Methods

| Communication Type | Method | Frequency | Purpose |
|-------------------|--------|-----------|---------|
| Team Meetings | Weekly (In-person/Online) | Every Monday 2 PM | Planning & coordination |
| Daily Standup | Discord/Teams Message | Daily | Progress updates & blockers |
| Email Updates | Email | Weekly | Status reports |
| Code Reviews | GitHub | Continuous | Code quality |
| Issue Tracking | GitHub Issues | Real-time | Bug/task management |

### 11.5 Resource Timeline

```
Resource Allocation Over 26 Weeks:

Weeks 1-3 (Planning):
  PM: 100%, Architect: 50%

Weeks 4-7 (Design):
  PM: 80%, Architect: 100%

Weeks 8-19 (Development):
  PM: 70%, Architect: 60%, Both as Developers: 100%

Weeks 20-21 (Testing):
  PM: 60%, QA: 100%

Weeks 22-23 (Deployment):
  PM: 100%, Architect: 80%

Weeks 24-26 (Support):
  PM: 50%, Architect: 30%
```

---

## 12. QUALITY ASSURANCE PLAN

### 12.1 Quality Objectives

- **Code Quality:** Minimum 75% code coverage
- **Functionality:** 100% functional requirements completion
- **Performance:** Page load time <3 seconds
- **Security:** Zero critical vulnerabilities
- **Usability:** User satisfaction score >4/5
- **Reliability:** 99% system uptime
- **Maintainability:** Code complexity within acceptable range

### 12.2 Testing Strategy

| Testing Type | Scope | Timeline | Responsible | Tools |
|--------------|-------|----------|-------------|-------|
| **Unit Testing** | Individual functions/components | During Development | Both | XUnit, Moq |
| **Integration Testing** | Module interactions, API calls | After Development | Both | Postman |
| **System Testing** | End-to-end functionality | Week 20 | Muhammad Taha | Manual Testing |
| **Performance Testing** | Load, response time | Week 20 | Muhammad Taha | Chrome DevTools |
| **Security Testing** | OWASP Top 10, vulnerabilities | Week 20 | Muhammad Taha | Manual Review |
| **UAT** | Real-world scenarios | Week 21 | Library Staff | Manual Testing |

### 12.3 Test Cases

**Expected Test Cases:** 80+ covering all critical features

**Test Case Distribution:**
- Critical Features: 100% coverage (30+ test cases)
- Important Features: 90% coverage (35+ test cases)
- Normal Features: 80% coverage (15+ test cases)

### 12.4 Code Review Process

**Process:**
1. Developer creates Pull Request (PR) on GitHub
2. Other team member reviews code
3. Checks: Standards, Security, Error Handling, Tests, Comments
4. Comments and suggestions added
5. Developer makes changes
6. Approval and merge

### 12.5 Quality Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| Code Coverage | 75% | Manual Review |
| Critical Issues | 0 | GitHub Issues |
| Test Pass Rate | 95% | Test Report |
| Page Load Time | <3 seconds | Chrome DevTools |
| Security Issues | 0 | Manual Security Review |

---

## 13. COMMUNICATION PLAN

### 13.1 Communication Strategy

**Objective:** Ensure clear communication between both team members and with instructor/stakeholders.

### 13.2 Communication Matrix

| Stakeholder | Information | Frequency | Method | Owner |
|-------------|-------------|-----------|--------|-------|
| **Miss Wajiha Naim (Instructor)** | Project status, progress, issues, approvals | Bi-weekly | Email + Meeting | PM |
| **Team Member** | Daily tasks, priorities, blockers | Daily | Discord/Teams | PM |
| **Library Director** | Progress, demos, requirements | Monthly | Report | PM |

### 13.3 Meeting Schedule

| Meeting | Frequency | Duration | Time | Purpose |
|---------|-----------|----------|------|---------|
| **Weekly Planning** | Weekly | 1 hour | Monday 2 PM | Plan next week |
| **Daily Standup** | Daily | 15 min | 10 AM | Progress & blockers |
| **Instructor Update** | Bi-weekly | 30 min | - | Status & guidance |
| **Code Review** | Weekly | 1 hour | Thursday | Code quality |

### 13.4 Documentation

| Document | Owner | Frequency | Location |
|----------|-------|-----------|----------|
| Project Charter | PM | Initial | GitHub Wiki |
| Requirements | PM | Updated | GitHub Wiki |
| Design Document | Architect | Updated | GitHub Wiki |
| API Documentation | Both | Ongoing | GitHub Wiki |
| Test Reports | QA | Weekly | GitHub Issues |
| Meeting Minutes | PM | After meetings | GitHub Discussions |

---

## 14. CONCLUSION

### 14.1 Project Planning Summary

The Library Management System (LMS) is a strategically important project for modernizing library operations. This comprehensive planning document outlines a detailed roadmap for successfully developing and deploying the system within 6 months using a 2-person team.

**Key Planning Highlights:**
- **Scope:** Well-defined with 20 functional and 14 non-functional requirements
- **Timeline:** Realistic 6-month schedule with clear milestones
- **Budget:** PKR 3.4 million with cost-effective approach using free tools
- **Resources:** Dedicated 2-person team with complementary skills
- **Risks:** Proactive identification and mitigation strategies
- **Quality:** Comprehensive testing and quality assurance plan

### 14.2 Expected Outcomes

**Tangible Benefits:**
1. **Operational Efficiency:** 60% reduction in manual processes
2. **Cost Savings:** PKR 2.5 million annual operational savings
3. **Service Quality:** Faster transactions, 24/7 member access
4. **Scalability:** System can handle 1000+ concurrent users
5. **Security:** Enterprise-grade security compliance

### 14.3 Success Criteria

The project will be considered successful if:
- ✅ All 20 functional requirements implemented and tested
- ✅ System deployed on schedule (Week 22)
- ✅ Project budget within ±10% (PKR 3.4M)
- ✅ Zero critical security vulnerabilities
- ✅ User satisfaction score >4/5
- ✅ Zero critical defects in UAT
- ✅ Staff trained and confident

### 14.4 Learning & Development

**Team Learning Outcomes:**
- Practical software project management experience
- ASP.NET Core MVC and SQL Server expertise
- Real-world application development
- Project documentation skills
- Team collaboration and communication

---

## 15. REFERENCES

### Academic & Professional References

1. **Project Management Institute (PMI).** (2017). *A Guide to the Project Management Body of Knowledge (PMBOK® Guide)* (6th ed.). Project Management Institute.

2. **Sommerville, I.** (2015). *Software Engineering* (10th ed.). Pearson Education.

3. **Pressman, R. S., & Maxim, B. R.** (2014). *Software Engineering: A Practitioner's Approach* (8th ed.). McGraw-Hill Education.

4. **IEEE Standard for Software and Systems Engineering.** (2011). *IEEE Std 730-2014 - Standard for Software Quality Assurance Processes*. Institute of Electrical and Electronics Engineers.

5. **Kerzner, H.** (2013). *Project Management: A Systems Approach to Planning, Scheduling, and Controlling* (11th ed.). John Wiley & Sons.

### Technology References

6. **Microsoft Corporation.** (2023). *ASP.NET Core Documentation*. Retrieved from https://docs.microsoft.com/en-us/aspnet/core/

7. **Microsoft Corporation.** (2023). *SQL Server 2019 Documentation*. Retrieved from https://docs.microsoft.com/en-us/sql/

8. **OWASP Foundation.** (2021). *OWASP Top 10 – 2021*. Retrieved from https://owasp.org/Top10/

9. **Entity Framework Core Documentation.** (2023). Retrieved from https://docs.microsoft.com/en-us/ef/core/

### Best Practices & Standards

10. **IEEE.** (2023). *IEEE Standard for Software Quality Assurance Processes (IEEE 730)*. Institute of Electrical and Electronics Engineers.

11. **ISO/IEC/IEEE.** (2017). *ISO/IEC/IEEE 29110 – Systems and Software Engineering – Lifecycle Processes for Very Small Entities*.

12. **International Organization for Standardization.** (2015). *ISO/IEC 27001:2013 Information Technology – Security Techniques – Information Security Management Systems*.

### Additional Resources

13. **Bootstrap Framework Documentation.** Retrieved from https://getbootstrap.com/docs/

14. **Git & GitHub Documentation.** Retrieved from https://docs.github.com/

15. **Azure Cloud Services Documentation.** Retrieved from https://docs.microsoft.com/en-us/azure/

---

## APPENDICES

### Appendix A: Acronyms

| Acronym | Full Form |
|---------|-----------|
| LMS | Library Management System |
| SPM | Software Project Management |
| SPPD | Software Project Planning Document |
| MVC | Model-View-Controller |
| ORM | Object-Relational Mapping |
| CRUD | Create, Read, Update, Delete |
| UAT | User Acceptance Testing |
| QA | Quality Assurance |
| API | Application Programming Interface |
| REST | Representational State Transfer |
| DB | Database |
| PM | Project Manager / Person-Month |
| CI/CD | Continuous Integration/Continuous Deployment |

### Appendix B: Glossary

**Scope:** The extent of what is included and excluded in the project

**Stakeholder:** Any person or organization affected by the project

**Risk:** An uncertain event that could impact project objectives

**Deliverable:** A tangible or intangible product produced by the project

**Milestone:** A significant point or event in the project

**Resource:** People, tools, or materials required for the project

**Budget:** The estimated cost allocated for the project

**Feasibility:** The practicability of completing the project

---

**Document Version:** 1.0  
**Last Updated:** June 2, 2026  
**Status:** Final  
**Classification:** Project Documentation  
**Distribution:** Team + Instructor

---

*This Software Project Planning and Documentation Report is a comprehensive guide for the Library Management System project. Both team members must adhere to the plans and strategies outlined in this document.*

