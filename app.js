const express = require("express");
const expressLayouts = require("express-ejs-layouts");
const app = express();
const port = 80;

app.set("view engine", "ejs");

app.use(expressLayouts);

app.get("/", (req, res) => {
  const options = {
    title: "Home page title",
    description: "Home page description",
  };
  res.render("index", options);
});

app.get("/about-us/", (req, res) => {
  const options = {
    title: "About Us page title",
    description: "About Us page description",
  };
  res.render("about-us/index", options);
});

app.get("/contact-us/", (req, res) => {
  const options = {
    title: "Contact Us page title",
    description: "Contact Us page description",
  };
  res.render("contact-us/index", options);
});

app.get("/service/", (req, res) => {
  const options = {
    title: "Service page title",
    description: "Service page description",
  };
  res.render("service/index", options);
});

app.get("/privacy-policy/", (req, res) => {
  const options = {
    title: "Privacy Policy page title",
    description: "Privacy Policy page description",
  };
  res.render("privacy-policy/index", options);
});

app.get("/terms-of-service/", (req, res) => {
  const options = {
    title: "Terms of Service page title",
    description: "Terms of Service page description",
  };
  res.render("terms-of-service/index", options);
});

app.listen(port, () => {
  console.log(`Example app listening on port http://localhost:${port}`);
});
