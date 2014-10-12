<?php

class gradwork extends Controller
{

    function index()
    {
        $this->gradwork = get_all("SELECT * FROM `gradwork`");
    }

    function view()
    {
        $gradwork_id = $this->params[0];
        $this->gradwork = get_first("SELECT * FROM `gradwork` WHERE gradwork_id = '{$gradwork_id}'");

    }
}