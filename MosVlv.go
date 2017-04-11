package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"github.com/gorilla/mux"
	u "github.com/nikonor/umb_lib"
	"log"
	"net/http"
	"os"
	"runtime"
	"strconv"
)

var (
	count = 0
	conf  = "/Users/nikonor/work/go/src/github.com/nikonor/MosVlv/MosVlv.conf"
	/*
	   формат конфига
	   static_dir=<Path to static files>
	*/
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
	type Data struct {
		Name string
		Age  int32
	}
	data := []Data{{"nikonor", 44}, {"nikonor.jr", 6}}
	js, _ := json.Marshal(data)
	out_json(w, js)
	// w.Header().Set("Content-Type", "application/json")
	// log.Printf("(%T) %s",js,js)
	// w.Write(js)
}

func handler(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	out_html(w, []byte(fmt.Sprintf("<html><body>Hi there, ULR=!%s!<br><b>Default: %d<br>PID/PPID/GID=%d/%d/%d<br>KEY=%s!<br>SUBKEY=%s!</body></html>", r.URL.Path[1:], count, os.Getpid(), os.Getppid(), getGID(), vars["key"], vars["subkey"])))
}

func out_json(w http.ResponseWriter, s []byte) {
	w.Header().Set("Content-Type", "application/json")
	w.Write(s)
}

func out_html(w http.ResponseWriter, s []byte) {
	w.Header().Set("Content-Type", "text/html")
	w.Write(s)
}

func main() {
	conf := u.ReadConf(conf)
	log.Printf("%#v\n", conf)
	server := &http.Server{
		Addr: ":8080",
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
