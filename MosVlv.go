package main

import (
    "fmt"
    "net/http"
    "os"
    "github.com/gorilla/mux"
    "log"
    "bytes"
    "runtime"
    "strconv"
    u "github.com/nikonor/umb_lib"
    "encoding/json"
)

var (
    count = 0
    conf = "/Users/nikonor/work/go/src/github.com/nikonor/MosVlv/MosVlv.conf"
)

func getGID() uint64 {
    b := make([]byte, 64)
    b = b[:runtime.Stack(b, false)]
    b = bytes.TrimPrefix(b, []byte("goroutine "))
    b = b[:bytes.IndexByte(b, ' ')]
    n, _ := strconv.ParseUint(string(b), 10, 64)
    return n
}


func handler_json(w http.ResponseWriter, r *http.Request) {
    // vars := mux.Vars(r)
    type Data struct  {
        Name string
        Age int32
    }
    data := []Data{{"nikonor",44},{"nikonor.jr",6}}
    js, _ := json.Marshal(data)
    w.Header().Set("Content-Type", "application/json")
    w.Write(js)
}

func handler(w http.ResponseWriter, r *http.Request) {
    vars := mux.Vars(r)
    fmt.Fprintf(w, "<html><body>Hi there, ULR=!%s!<br><b>Default: %d<br>PID/PPID/GID=%d/%d/%d<br>KEY=%s!<br>SUBKEY=%s!</body></html>", r.URL.Path[1:],count,os.Getpid(),os.Getppid(), getGID(),vars["key"],vars["subkey"])
}



func main() {
    conf := u.ReadConf(conf)
    log.Printf("%#v\n",conf)
    server := &http.Server{
        Addr:           ":8080",
        // Handler:        myHandler,
        // ReadTimeout:    10 * time.Second,
        // WriteTimeout:   10 * time.Second,
        // MaxHeaderBytes: 1 << 20,
    }
    
    router := mux.NewRouter()
    // http.Handle("/static/", http.FileServer(http.Dir()))
    router.HandleFunc("/api/{key}", handler).Methods("GET")
    router.HandleFunc("/api/json/{key}", handler_json).Methods("GET")
    router.PathPrefix("/").Handler(http.FileServer(http.Dir(conf["STATIC_DIR"])))


    http.Handle("/", router)
    log.Print("Server start...")
    log.Fatal(server.ListenAndServe())
    // http.ListenAndServe(server, nil)
}
