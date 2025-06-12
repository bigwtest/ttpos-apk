```
go install golang.org/x/mobile/cmd/gomobile@latest
gomobile init 
go get golang.org/x/mobile/bind
go get
gomobile bind -ldflags "-s -w" -v -androidapi 19 -target="android"
gomobile bind -ldflags "-s -w" -v -target=ios,iossimulator
```