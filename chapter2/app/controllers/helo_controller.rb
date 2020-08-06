class HeloController < ApplicationController
    # def index
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
        # if params['msg'] != nil then
        #     msg = 'Hello,' + params['msg'] + '!'
        # else
        #     msg = 'this is sample page.'
        # end
        
        # html = '
        #         <html>
        #         <body>
        #             <h1>sample page</h1>
        #             <p>' + msg + '</p>
        #         </body>
        #         </html>
        #       '
        # render html: html.html_safe
        
        #p86,
        # @title = 'viewサンプル'
        # @msg   = 'コントローラーに用意した値です。'
        
        # p88,
    #     if params['msg'] != nil then
    #         @title = params['msg']
    #     else
    #         @title = 'index'
    #     end
    #     @msg = 'this is redirect sample...'
    # end
    
    # def other
    #     redirect_to action: :index, params: {'msg': 'from other page'}
    # end
    
    # p93
    
    # protect_from_forgery
    # def index
    #     if request.post? then
    #         @title = 'Result'
    #         @msg   = 'you typed:' + params['input1'] + '.'
    #         @value = params['input1']
    #     else
    #         @title = 'Index'
    #         @msg   = 'type text...'
    #         @value = ''
    #     end
    # end
    
    # p103
    def index
        if request.post? then
            @title = 'Result'
            if params['check1']  then
                @msg = 'you checked!'
            else
                @msg = 'not checked...'
            end
        else
            @title = 'Index'
            @msg   = 'check it...'
        end
    end
end
