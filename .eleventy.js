module.exports = function(eleventyConfig) {
  eleventyConfig.addPassthroughCopy("img");
  eleventyConfig.addPassthroughCopy("dist");
  eleventyConfig.addPassthroughCopy("demo");
  eleventyConfig.addPassthroughCopy("scripts");

  return {
    passthroughFileCopy: true
  };
};
