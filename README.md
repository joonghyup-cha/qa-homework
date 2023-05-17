# My Project

This is a QA-Homework project for demonstrating E2E Test by Using Robot Framework with the Page Object Model.

## Setup

1. Install Python and pip.
2. Init Robotframework Browser
```
python -m pip install -r requirements.txt
rfbrowser init
```

## Usage

Execute the test cases using the command:

**Caution! Test Google accounts should not have two-factor authentication enabled.**

```
python -m robot -v EMAIL:${YOUR_GOOGLE_ACCOUNT_EMAIL} -v PASSWORD:${YOUR_GOOGLE_ACCOUNT_PASSWORD} -v PINCODE:${YOUR_FACE_WALLET_PINCODE} Tests/E2ETest.robot
```

## Folder Structure
```
├── .gihub/workflow
├── Keywords            # Resuable Keywords.
├── Pages               # Page Objective Models
├── Resources           # Test Resources
├── Tests               # Test Cases 
├── .gitignore
├── requirements.txt
└── README.md
```

For more information, please refer to the [Robot Framework documentation](https://robotframework.org/).
