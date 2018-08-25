
///// @description Play the song
//if (audio_exists(next_song)) {
//    if (music_volume > 0) {
//        //Fade Out
//        if (fade) {
//            music_volume = approach(music_volume, 0, fade_spd);
//        }else{
//            music_volume = 0;
//        }
//    } else {
//        //Update the song variables
//        previous_song = current_song;
//        current_song = next_song;
//        next_song = noone;
        
//        //Stop the previous song
//        if (audio_exists(previous_song)) {
//            audio_stop_sound(previous_song);       
//        }
//    }
//}else {
//    //Fade in
//    if (fade) {
//        music_volume = approach(music_volume, music_max_volume, fade_spd);
//    } else {
//        music_volume = music_max_volume;
//        }
//}

////Play the song
//if (!audio_is_playing(current_song)) {
//    audio_play_sound_on(music_emitter, current_song, true, 4);
//}

/////Update the audio
//audio_emitter_gain(sfx_emitter, sfx_volume);
//audio_emitter_gain(music_emitter, music_volume);


