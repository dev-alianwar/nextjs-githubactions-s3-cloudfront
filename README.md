### Deploy Next.js to S3 CloudFront
In this example, Nest.js application is deployed as static resource to S3 and cloudfront using GithubActions. 
 
## Explanation
1. Checkout repository: Uses the actions/checkout@v2 action to check out your repository.
2. Setup Node.js: Uses the actions/setup-node@v2 action to set up the Node.js environment. Adjust the node-version as needed.
3. Install dependencies: Runs npm install to install project dependencies.
4. Build Next.js application: Runs npm run build to build the application.
5. Export Next.js application: Runs npm run export to export the application to static HTML.
6. Sync to S3: Uses the AWS CLI to sync the out/ directory (the exported static site) to your S3 bucket. Make sure to replace your-s3-bucket-name with your actual S3 bucket name.
7. Invalidate CloudFront: Uses the AWS CLI to invalidate the CloudFront cache, ensuring that the latest files are served.

# Secrets
To securely store your AWS credentials and other sensitive information, add the following secrets to your GitHub repository:
```
AWS_REGION: Your AWS region (e.g., us-west-2).
AWS_ACCESS_KEY_ID: Your AWS access key ID.
AWS_SECRET_ACCESS_KEY: Your AWS secret access key.
CLOUDFRONT_DISTRIBUTION_ID: Your CloudFront distribution ID.
```
# To add secrets to your GitHub repository:
- Go to your repository on GitHub.
- Click on Settings.
- In the Security section of the sidebar, click Secrets and variables.
- Click Actions.
- Click New repository secret.
- Add each secret with its corresponding value.

# Customizing the Workflow
* Branches: Adjust the branches in the push trigger to match your deployment strategy.
* Node Version: Adjust the Node.js version in the setup-node step if needed.
* Build Commands: Modify the build and export commands if your project uses different scripts or tools.
* This reusable GitHub Action workflow will streamline the process of deploying your Next.js application to S3 and invalidating the CloudFront cache automatically.


## Create Github Secrets

## Workflow permissions 
Settings -> Actions -> General -> Workflow permissions
You need to turn on Read and write permissions to push tags to github repository

## Next.js Local development

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Inter, a custom Google Font.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.