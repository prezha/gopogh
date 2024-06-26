

# Gopogh
[![Github All Releases](https://img.shields.io/github/downloads/medyagh/gopogh/total.svg)]()

Converts golang test results from json to user-friendly html.

Example test logs: [before](https://storage.googleapis.com/minikube-builds/logs/13641/22745/Docker_Linux.out.txt), [after](https://storage.googleapis.com/minikube-builds/logs/13641/22745/Docker_Linux.html) 

## GIF Demo

### Without gopogh
![Demo without gopogh](https://raw.githubusercontent.com/medyagh/gopogh/master/before.gif)

### With gopogh
![Demo with gopogh](https://raw.githubusercontent.com/medyagh/gopogh/master/after.gif)



## Features:
- foldable test results.
- open each subtest result in a new window.
- sort test by passed/failed/skipped.
- sort test by execution duration.
- search in each test result separately.
- summary table
- generate json summary


## Give it a try

- first install gopogh
```
        go install github.com/medyagh/gopogh/cmd/gopogh@latest
```

- run your integration test and convert it to json

```
        go tool test2json -t < ./your-test-logs.txt > ./your-test-log.json
```
- run gopogh on it

```
TEST_PR_NUMBER=1313
TEST_NAME="KVM Linux"
GITHUB_REPOSITORY="github.com/kubernetes/minikube/"
GITHUB_SHA=1234567890
gopogh -in ./your-test-log.json -out_html ./report/testout.html -out_summary ./your-test-summary.json -name "${TEST_NAME}" -pr "${TEST_PR_NUMBER}" -repo "${GITHUB_REPOSITORY}"  -details "${GITHUB_SHA}" 
```



## History 
I lead the minikube team and due to growing number PRs and number of integration tests on multiple OS, drivers, container runtimes.
Each test failure on a PR generated tens of thousands of lines for raw logs. (with system-level postmortems)
that made reviewing PRS slow and hard ! so during a hackathon, I built gopogh (short for go pretty or go home) that converts




## Github Action example

See [minikube's example](https://github.com/kubernetes/minikube/blob/793eeae748effb7949a2537579b2e4f32a9ab5a8/.github/workflows/master.yml#L162)





### Contribution
Contributions are welcome.
Run tests:
```
make test
open output.html
```
