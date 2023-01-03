import Control.Monad
import Control.Monad.IO.Class
import Data.IORef
import Graphics.UI.Gtk hiding (Action, backspace)

main :: IO()
main = do
    void initGUI
    window <- windowNew
    set window [ windowTitle := "Bonjour"
                ,windowResizable := False
                ,windowDefaultHeight := 250
                ,windowDefaultWidth := 250
               ]
    widgetShowAll window
    mainGUI