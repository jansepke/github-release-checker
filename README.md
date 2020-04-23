# github-release-checker

checks for a new release in a github repository. github-release-checker exists with exit code 1 if the given version differs compared to the latest release.

## example

```bash
$ docker run github-release-checker hashicorp/terraform v0.12.0
hashicorp/terraform version v0.12.24 is newer then v0.12.0
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)
