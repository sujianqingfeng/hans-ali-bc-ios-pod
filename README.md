# hans-ali-bc-ios-pod

This repository packages the iOS vendored `.framework` binaries used by the `hans-ali-bc` uni-app x UTS plugin as a CocoaPods pod.

Why: HBuilderX cloud packaging enforces an upload size limit. Moving the heavy iOS SDK binaries from `uni_modules/**/app-ios/Frameworks` into a pod (fetched during build) keeps the upload size small.

## License Notice

These binaries are not open source. Make sure you have the right to redistribute the Alibaba Baichuan SDK and all bundled dependencies before publishing this repository (even privately).

## Usage (uni-app x UTS plugin)

1. Push this repo to GitHub (or any git host reachable by DCloud cloud build).
2. Create a git tag, for example `0.1.0`.
3. In your UTS module iOS `config.json`, add a `dependencies-pods` entry pointing to this repo/tag.

Example (replace the git URL and tag):

```json
{
  "dependencies-pods": [
    {
      "name": "HansAliBcSDK",
      "repo": { "git": "https://github.com/<org>/hans-ali-bc-ios-pod.git", "tag": "0.1.0" }
    }
  ]
}
```

