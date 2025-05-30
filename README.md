# Medusa Deployment on AWS ECS using Terraform & GitHub Actions

This project deploys the [Medusa](https://medusajs.com/) headless commerce backend on AWS using ECS Fargate. CI/CD is configured using GitHub Actions.

## 🛠 Tech Stack

- **Terraform** – for infrastructure as code  
- **AWS ECS + Fargate** – to run containers without managing servers  
- **GitHub Actions** – for CI/CD  
- **MedusaJS** – open-source commerce backend

## 🚀 Deployment Steps

1. **Clone this repository**
2. **Set GitHub Secrets**  
   Go to your repo → Settings → Secrets and add:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`

3. **Push to `main` branch**  
   This triggers GitHub Actions to:
   - Deploy your AWS infrastructure via Terraform
   - Run ECS Fargate task with Medusa container

## 🌐 Accessing Medusa

Once deployed:

1. Go to **ECS → medusa-cluster → Tasks**
2. Get the **public IP** from the running task's **network details**
3. Open in browser:  
http://<public-ip>:3000

You should see: **Medusa backend running on port 3000**

> Make sure Medusa is configured to bind to `0.0.0.0` (this is handled in the ECS task definition).

## 🧼 Teardown

To destroy all infrastructure:

- Manually run the **`Destroy Medusa Infrastructure`** GitHub Action workflow from the Actions tab.



Made with ❤️ by [Kiran Rakh](https://github.com/kiranrakh)
