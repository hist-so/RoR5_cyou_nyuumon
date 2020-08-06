class HeloController < ApplicationController
    def index
        # render plain: 'Hello this is Rails sample page!'
        msg =   '
                <html>
                <body>
                    <h1>sample page</h1>
                    <p>this is sample page!</p>
                </body>
                </html>
                '
        render html: msg.html_safe
    end
end
