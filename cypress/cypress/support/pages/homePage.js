import { home } from "../elements/home";
import { click, getText } from "../actions";

export default {
    verifySuccessMsg(expectedTxt) {
        getText(home.toastSuccess, expectedTxt)
    },

    logOut() {
        click(home.btnLogout)
    }
}