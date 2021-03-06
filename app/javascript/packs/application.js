// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { previewImageOnFileSelect, initDrop } from "../components/photo_preview.js"

// Internal imports, e.g:

import { toggleSubtasksPanel } from '../components/toggle_subtasks_panel';

// import { initSelect2 } from '../components/init_select2';
import {timelineSubtasks} from '../components/timeline_subtask'
import {listChange} from '../components/list_change.js'
import {situationForm} from '../components/situation_form.js'
import { validateTask } from '../components/validate_task.js';
import { disableEnter } from '../components/disable_enter.js';



document.addEventListener('turbolinks:load', () => {
  previewImageOnFileSelect();
  initDrop();
  // Call your functions here, e.g:
  // initSelect2();
  toggleSubtasksPanel();
  timelineSubtasks();
  listChange();
  situationForm();
  validateTask();
  disableEnter();
});




