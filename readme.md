### Diffing .FCStd files
If you need to see the differences between committed `.FCStd` files, run the following command:  
`git config diff.zip.textconv "unzip -c -a"`  
  
It can be verified to be working if `git check-attr diff path/to/file.FCStd` shows:
```
".\\path\\to\\file.FCStd": diff: zip
```