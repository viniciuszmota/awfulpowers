import { Application } from "@hotwired/stimulus"

const application = Application.start()
window.Stimulus = application // Ensure it's globally available

export { application }


// import { Application } from "@hotwired/stimulus"

// const application = Application.start()

// // Configure Stimulus development experience
// application.debug = false
// window.Stimulus   = application

// export { application }