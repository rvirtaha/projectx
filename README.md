# docs
## dev environment
1. build the devcontainer

2. run
```bash
# enter the devcontainer
docker exec -it projectx_devcontainer-app-1 bash
# inside the container
cd /workspaces/projectx
git config --global --add safe.directory /workspaces/projectx
vercel login
vercel link
vercel env pull
npm run dev
```
Production deployment happens automatically when pushing to `main`, which requires a pull request.
Other branches pushed to git will be preview deployments.

You should change environment variables using the vercel cli or using the vercel web-portal (project settings > environment variables). 

## cypress
To run cypress interactively run
```bash
docker run -it \
  -v $PWD:/e2e \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -w /e2e \
  -e DISPLAY \
  --network host \
  --entrypoint cypress \
  cypress/included:12.3.0 open --project .
```
more information can be found in
https://www.cypress.io/blog/2019/05/02/run-cypress-with-a-single-docker-command/

Cypress executes as root and files created by it may be owned by the root user.
In this case you can 
```bash
# to view details about file ownership
ls -l
# to change directory ownership
sudo chown -R node:node DIRECTORY
# to change file ownership
sudo chown node:node FILENAME
```

---
## Next-specific docs ->

This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `pages/index.tsx`. The page auto-updates as you edit the file.

[API routes](https://nextjs.org/docs/api-routes/introduction) can be accessed on [http://localhost:3000/api/hello](http://localhost:3000/api/hello). This endpoint can be edited in `pages/api/hello.ts`.

The `pages/api` directory is mapped to `/api/*`. Files in this directory are treated as [API routes](https://nextjs.org/docs/api-routes/introduction) instead of React pages.

This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Inter, a custom Google Font.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.
