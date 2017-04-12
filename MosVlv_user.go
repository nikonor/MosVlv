package main 

import (
    "encoding/json"
    "net/http"
    "github.com/gorilla/mux"
    "strconv"
)

func user_func (w http.ResponseWriter, r *http.Request) {
    var user_id int32
    vars := mux.Vars(r)
    if len(vars["user_id"]) > 1 {
        if u,err := strconv.Atoi(vars["user_id"][1:]); err == nil {
            user_id = int32(u)
        }

    }

    type Data struct {
     Name string
     Age  int32
    }
    data := []Data{{"Nikonor", 44}, {"Nikonor.JR", 6}}


    data = append(data,Data{vars["user_id"],user_id})
    js, _ := json.Marshal(data)
    out_json(w, js)
}