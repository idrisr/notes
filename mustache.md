# Mustache

# YAML
YAML is a human friendly data serialization standard for all programming languages.

## frontmatter ("YFM")
YFM is an optional section of valid YAML that is placed at the top of a page and
is used for maintaining metadata for the page and its contents.

### Example
    ---
    title: YAML Front Matter
    description: A very simple way to add structured data to a page.
    ---
    <h1> {{ title }} </h1>
    <p> {{ description }} </p>
    Page content here...
