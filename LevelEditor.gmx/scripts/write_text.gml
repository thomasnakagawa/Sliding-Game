var appendfile = file_text_open_write(obj_filename.savefile);
for(var l = 0; l < num_levels; l++){  
    //append this level to the text file
    file_text_write_string(appendfile, "{");
    file_text_write_string(appendfile,chr(13) + chr(10));
    for(var i = 0; i < level[l].height; i++){
        file_text_write_string(appendfile, level[l].data[i]);
        file_text_write_string(appendfile,chr(13) + chr(10));
    }
    file_text_write_string(appendfile, "}");
    file_text_write_string(appendfile,chr(13) + chr(10));
}
file_text_close(appendfile);
