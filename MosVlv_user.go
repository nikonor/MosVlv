package main

import (
	"encoding/json"
	"fmt"
	"github.com/gorilla/mux"
	"log"
	"net/http"
	"strconv"
)

func user_func(w http.ResponseWriter, r *http.Request) {
	var user_id int32
	vars := mux.Vars(r)
	if len(vars["user_id"]) > 1 {
		if u, err := strconv.Atoi(vars["user_id"][1:]); err == nil {
			user_id = int32(u)
		}

	}

	switch r.Method {
	case "GET":
		type Data struct {
			Name string
			Age  int32
		}
		data := []Data{{"Nikonor", 44}, {"Nikonor.JR", 6}}

		log.Printf("user_id=%d", user_id)
		if user_id == 22 {
			out_error(w, 500, "проверка")
			return
		}
		data = append(data, Data{vars["user_id"], user_id})
		js, _ := json.Marshal(data)
		out_json(w, js)
	case "PUT":
		js, err := user_put(r)
		if err != nil {
			out_error(w, 500, fmt.Sprintf("%s", err))
		} else {
			out_json(w, js)
		}
	}
}

func user_put(r *http.Request) ([]byte, error) {
	log.Print("Call user::PUT")
	log.Printf("$#v", r)
	// if err := r.ParseForm(); err != nil {
	// 	return nil, err
	// }
	email := r.FormValue("email")
	password := r.FormValue("password")
	log.Printf("email=!%s!, password=!%s!", email, password)
	type Data struct {
		Name string
		Age  int32
	}
	data := []Data{{"PUT Nikonor", 44}, {"PUT Nikonor.JR", 6}}
	js, _ := json.Marshal(data)
	return js, nil
}
