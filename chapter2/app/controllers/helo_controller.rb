class HeloController < ApplicationController
    def index
        #p68,
        # render plain: 'Hello this is Rails sample page!'
        
        #p75,
        # msg =   '
        #         <html>
        #         <body>
        #             <h1>sample page</h1>
        #             <p>this is sample page!</p>
        #         </body>
        #         </html>
        #         '
        # render html: msg.html_safe
        
        #p79,
        if params['msg'] != nil then
            msg = 'Hello,' + params['msg'] + '!'
        else
            msg = 'this is sample page.'
        end
        
        html = '
                <html>
                <body>
                    <h1>sample page</h1>
                    <p>' + msg + '</p>
                </body>
                </html>
              '
        render html: html.html_safe
    end
end
