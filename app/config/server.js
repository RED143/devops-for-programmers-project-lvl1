module.exports = ({ env }) => ({
  host: env("HOST", "0.0.0.0"),
  port: env.int("PORT", 8080),
  url: "http://localhost",
  admin: {
    auth: {
      secret: env("ADMIN_JWT_SECRET", "762b165fc711d0b9fa10d81e527ba398"),
    },
  },
});
