import p from "../utils/prisma";

export const getUsers = async () => {
  const users = await p.user.findMany();
  return users;
};

export const getUser = async (userId: number) => {
  const user = await p.user.findUnique({
    where: { userId: userId },
  });
  return user;
};
