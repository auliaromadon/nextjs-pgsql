#!/bin/sh
npx prisma db push
npx prisma generate
npm run dev
