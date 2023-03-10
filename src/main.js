import { createApp } from 'vue'
import App from './App.vue'
import { library } from '@fortawesome/fontawesome-svg-core'
import 'bootstrap'
import 'bootstrap/dist/css/bootstrap.css'

import {
  faPhone,
  faEnvelope,
  faHeart,
} from '@fortawesome/free-solid-svg-icons'

library.add(faPhone, faEnvelope, faHeart)

createApp(App).mount('#app')
