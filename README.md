# fleece-shrubbery-bench

Compiles a json-fleece schema for a 16-member tagged union before and after the
json-fleece and shrubbery changes that right-associate union combines and look
up tags in a single walk.

```sh
./run.sh            # before and after
./run.sh after      # one configuration
```

`run.sh` needs `stack`. Each configuration pins its dependencies in
`before.yaml` or `after.yaml`. It prints the coercion count after desugaring
and GHC's maximum residency.

| Configuration | Coercions | Maximum residency |
|---------------|----------:|------------------:|
| before        | 7,328,951 |            314 MB |
| after         |    21,460 |             16 MB |
