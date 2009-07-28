module Xeriom
  module Xend
    module XenStore
      class VirtualMachine
        def VirtualMachine.from_list_entry(entry)
        end

        def VirtualMachine.from_list(list)
        end

        def VirtualMachine.list
          xenstore_ls = "sudo /usr/bin/xenstore-ls"
          domain_list = `#{xenstore_ls} /local/domain/`
          domain_list.strip!
          domain_details = domain_list.split(/\n/).map { |line|
            line.split(' = ', 2).join(': ')
          }
          domains = YAML.parse(domain_details)
          domains.unshift # Remove dom0.
          
          domains = {}
          while domain_details.any?
            
          end

          # extra_details = `#{xenstore_ls} /vm`
          # extra_details.strip!
          # domain_extra_details = extra_details.split(/\n/)
          # 

        end
      end
    end
  end
end