classdef startMenu < handle
    properties
        dir;
        id;
        group;
        trial;
        finished;
    end
    methods
        function obj = startMenu()
            obj.dir = 'N';
            obj.id = 0;
            obj.group = 0;
            obj.trial = 0;
            obj.finished = false;
        end
        
        function isFinished = checkFinished(obj)
            isFinished = obj.finished;
        end
        
        function run(obj)
            while(~obj.finished) 
                obj.dir = input('please enter R or L: ', 's'); %returns it as a text variable
                if(obj.dir == 'R')
                    disp('entered R'); %testing
                elseif(obj.dir == 'L')
                    disp('entered L');
                else
                    disp('direction not recognized!')
                    continue;
                end
                obj.id = input('please enter id: ');
                disp(sprintf('entered %d', obj.id));
                obj.group = input('please enter group number: ');
                obj.trial = input('please enter trial number: ');
                if(obj.id ~= 0 && obj.group ~= 0 && obj.trial ~= 0)
                    obj.finished = true;
                    disp('game start');
                else
                    disp('error');
                end
            end
        end
        
        function dirResult = getDir(obj)
            dirResult = obj.dir;
        end
        
        function idResult = getId(obj)
            idResult = obj.id;
        end
        
        function groupResult = getGroup(obj)
            groupResult = obj.group;
        end
        
        function trialResult = getTrial(obj)
            trialResult = obj.trial;
        end
    end
end







