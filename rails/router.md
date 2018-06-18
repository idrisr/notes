# Routers

from [here](http://guides.rubyonrails.org/routing.html)

The Rails router recognizes URLs and dispatches them to a controller's action,
or to a Rack application. It can also generate paths and URLs, avoiding the need
to hardcode strings in your views.


```
GET /patients/17
```

```ruby
get '/patients/:id', to: 'patients#show'
```

the request is dispatched to the `patients` controller's `show` action with `{ id:
'17' }` in `params`.
