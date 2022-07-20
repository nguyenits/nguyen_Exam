import { Application } from "@hotwired/stimulus"

const application = Application.start()
    //= require jquery.countdown
    //= require cocoon
    // Configure Stimulus development experience
application.debug = false
window.Stimulus = application
var countdown = function() {
    $('#clock').countdown({ //clock là thẻ chứa bộ đếm đồng hồ
        until: $('#remaining_time').val(), //thời gian đếm
        format: 'HMS', //địn dạng thời gian
        onExpiry: function() {
            $('.submit-time-out').hidden(); //submit khi hết giờ
        }
    });
}
import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("../controllers", true, /\.js$/)
application.load(definitionsFromContext(context))
document.addEventListener('turbolinks:load', countdown);
$(document).on('page:update', countdown);