module.exports = function(eleventyConfig) {
  eleventyConfig.addPassthroughCopy("img");
  eleventyConfig.addPassthroughCopy("elemental/dist");
  eleventyConfig.addPassthroughCopy("demo");
  eleventyConfig.addPassthroughCopy("scripts");

  return {
    pathPrefix: "/tm-css/",
    passthroughFileCopy: true
  };
};
