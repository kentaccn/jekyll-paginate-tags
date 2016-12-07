# Jekyll::Paginate::Tags

Default pagination generator for Jekyll Tags.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-paginate-tags'
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install jekyll-paginate-tags
```

## Usage

### Config example

Example of `/_config.yml` file:

```yaml
# Pagination
paginate: 1
paginate_path: "/p/:num/"

paginate_tag_basepath: '/t/:name/'
paginate_tag_path: '/page/:num'
paginate_tag_layout: 'tag-test.html'

# Plugins
gems :
  - jekyll-paginate
  - jekyll-paginate-tags
```

### Layout example

Example of `/_layouts/tags.html` file:

```html
---
layout: default
---

<!-- Tagtitle -->
<h1>Tag: {{ page.tag }}</h1>

<!-- This loops through the paginated posts -->
{% for post in paginator.posts %}
  <article>
    <header>
      <h1><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h1>
    </header>
    <div class="entry-content">
      {{ post.excerpt }}
    </div>
  </article>
{% endfor %}

<!-- Pagination links -->
<div class="pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path }}" class="previous">Previous</a>
  {% else %}
    <span class="previous">Previous</span>
  {% endif %}
  <span class="page_number">Page: {{ paginator.page }} of {{ paginator.total_pages }}</span>
  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path }}" class="next">Next</a>
  {% else %}
    <span class="next">Next</span>
  {% endif %}
</div>
```

## Credits

Inspired by this [Nicolas Carlo's gist](https://gist.github.com/nicoespeon/9964343) for Jekyll 1.5.1 and [jguyomard's gist] (https://github.com/jguyomard/jekyll-paginate-categories)

## Contributing

Note: I'm not a Ruby developer

You are invited to contribute new features, fixes or updates to this plugin, through a [Github Pull Request](https://github.com/kentaccn/jekyll-paginate-tags/pulls).


## Licence

MIT.
