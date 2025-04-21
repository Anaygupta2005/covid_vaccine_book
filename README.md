# covid_vaccine_book
A custom AutoHotkey script I built to automate COVID-19 vaccination slot booking on CoWIN.gov.in. This helped me secure slots for my family and our house help during peak demand when slots were gone within seconds.

During the peak of the COVID-19 vaccination drive in India, booking a slot on [CoWIN.gov.in](https://www.cowin.gov.in/) was nearly impossible, especially for those without fast internet or the know-how to navigate the site quickly. This AutoHotkey script was something I built out of necessity to help my family and our house help secure vaccination slots.

This script:
- Records the screen positions of vaccination slot buttons and the confirm button.
- Continuously loops through available slots and attempts to book them automatically.
- Includes pixel color detection to identify when a slot becomes available (by color codes).
- Notifies the user with beeps when a slot is successfully found.

There are two major functionalities:
- `Ctrl+Alt+B`: Setup and begin booking from previously chosen slots.
- `Ctrl+Alt+A`: Scan the screen for availability in upcoming weeks, using pixel-based slot detection logic.
- `Ctrl+Alt+P`: Pause the script
- `e`: Exit the script

## How to Use

1. Install [AutoHotkey](https://www.autohotkey.com/).
2. Run the script (download the `.ahk` file).
3. Use `Ctrl+Alt+B` to record the screen coordinates of 4 desired slot buttons and the confirm button.
4. Alternatively, use `Ctrl+Alt+A` to set a screen scan range and detect new slot availability.
5. Let the script run and book automatically when it detects availability.


##  Disclaimer

- This script was made for personal use and worked reliably during the specific UI of CoWIN back in 2021.
- It might no longer work due to UI or backend changes on the CoWIN portal.


Feel free to fork, adapt, or improve this for accessibility or health initiatives.
